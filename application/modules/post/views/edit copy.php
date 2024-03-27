<?php
$postId = $postInfo->postId;
$postTitle = $postInfo->postTitle;
$description = $postInfo->description;
$post_pic = unserialize($postInfo->post_pic);
?>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-user-circle-o" aria-hidden="true"></i> Post Management
        <small>Add / Edit Post</small>
      </h1>
    </section>
    
    <section class="content">
    
        <div class="row">
            <!-- left column -->
            <div class="col-md-8">
              <!-- general form elements -->
                
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Enter Post Details</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                      
                    <form role="form" action="<?php echo base_url() ?>post/editPost" method="post" id="editPost" role="form">
                        <div class="box-body">
                        <div class="row">
                                <div class="col-md-6">                                
                                    <div class="form-group">
                                        <label for="postTitle">post Title</label>
                                        <input type="text" class="form-control required" value="<?php echo $postTitle; ?>" id="postTitle" name="postTitle" maxlength="256" />
                                        <input type="hidden" value="<?php echo $postId; ?>" name="postId" id="postId" />
                                    </div>
                                    
                                </div>
								<div class="col-md-12">
									<div class="form-group">
										<label for="post_pic">Upload Images</label>
										<?php
										$post_pic = unserialize($postInfo->post_pic);
											if (!empty ($post_pic) && is_array($post_pic)) {
												foreach ($post_pic as $post_pic) {
													echo '<img src="' . base_url('uploads/' . $post_pic) . '" style="width: 50px; height: 50px; margin-right: 5px;" />';
												}
											}
											?>
										<input type="file" class="form-control custom-file-input" id="post_pic"
											name="post_pic[]" multiple accept="image/*" required>
											<small class="text-muted">Allowed types: gif, jpg, png.</small>
									</div>
								</div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="description">Description</label>
                                        <textarea class="form-control required" id="description" name="description"><?php echo $description; ?></textarea>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.box-body -->
    
                        <div class="box-footer">
                            <input type="submit" class="btn btn-primary" value="Submit" />
                            <input type="reset" class="btn btn-default" value="Reset" />
                        </div>
                    </form>
                  
                </div>
            </div>
            <div class="col-md-4">
                <?php
                    $this->load->helper('form');
                    $error = $this->session->flashdata('error');
                    if($error)
                    {
                ?>
                <div class="alert alert-danger alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <?php echo $this->session->flashdata('error'); ?>                    
                </div>
                <?php } ?>
                <?php  
                    $success = $this->session->flashdata('success');
                    if($success)
                    {
                ?>
                <div class="alert alert-success alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <?php echo $this->session->flashdata('success'); ?>
                </div>
                <?php } ?>
                
                <div class="row">
                    <div class="col-md-12">
                        <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
