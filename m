Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 511FC53870B
	for <lists+blinux-list@lfdr.de>; Mon, 30 May 2022 20:08:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653934138;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OsASCGbNu/i+y48+TlfdNSiFdkJSmKjU8Zv9CVLs0DA=;
	b=bmmTnMzlL2a6saoIW6V3Y75dgpcdTVJV/0Od+iNt4nXtkF21rGm0a4TglSedhhbaD3xRhr
	EIAaOs+gHImALgmpIl0W8XRnrrY8w9kmwUAGzMZXd/89GWysCOvRJFj9g/p+qdMYh7+wHX
	385XHZCaO+ynqW5+7+jhlaW/Qh0JQRw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-336-NoCi62IqMSyr7O6l1vGQeA-1; Mon, 30 May 2022 14:08:56 -0400
X-MC-Unique: NoCi62IqMSyr7O6l1vGQeA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 87EB585A5B9;
	Mon, 30 May 2022 18:08:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 04240C44AE3;
	Mon, 30 May 2022 18:08:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 835251947061;
	Mon, 30 May 2022 18:08:54 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 30 May 2022 12:47:18 -0500
To: blinux-list@redhat.com
Subject: Re: Accessible ftp
In-Reply-To: <mailman.19314.1653930655.111203.blinux-list@redhat.com>
References: <mailman.19063.1653928602.111210.blinux-list@redhat.com>
 <mailman.19544.1653929382.111206.blinux-list@redhat.com>
 <mailman.19314.1653930655.111203.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.19405.1653934134.111209.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here again.  For FTP-over-TLS (also known as FTPS which
confusingly is different from SFTP), curl supports it well:

 $ curl --sl -T local.zip "ftps://ftp.example.com/path/to/dest/newname.zip"

to send a file and

 $ curl --ssl "ftps://ftp.example.com/path/to/file.zip"

to download a file.

-Tim


On May 30, 2022, Linux for blind general discussion wrote:
> Ok, sorry, I was probably not as clear as I should have been. One
> of the sites I have to connect to asks for ftp over tls, and none
> of the 4 sites has standard port 21 as the connection default.
> 
> I know I could probably use filezilla on the GUI, but I'd prefer
> the CLI.
> 
> Warm regards,
> 
> Brandt Steenkamp
> 
> Sent using Thunderbird from the Slint laptop
> 
> On 2022/05/30 18:49, Linux for blind general discussion wrote:
> > Tim here.  I've always just used the command-line client (since
> > the late 80s or early 90s over dial-up?) which is accessible as
> > any other CLI application:
> >
> >    $ ftp ftp.example.com  
> >    ftp> ls  
> >    [files & directories]  
> >    ftp> cd /pub
> >    ftp> ls  
> >    [files & directories in /pub]  
> >    ftp> bin  
> >    200 Type set to I.  
> >    ftp> get some_file.zip  
> >    [file downloads]  
> >    ftp> put local_file.mp3  
> >    [uploads "local_file.mp3" to the server]
> >
> > If you're only transferring text documents, you can skip the
> > "bin"ary command, letting it jockey line-endings for you.  But
> > most of the time you want to use "bin"ary mode to ensure the file
> > doesn't have newline-translation during transfer.
> >
> > -Tim
> >
> >
> > On May 30, 2022, Linux for blind general discussion wrote:  
> >> I need a way to connect to some ftp sirvers, what would you
> >> recommend, weather it be CLI or GUI really doesn't matter to me.
> >>  
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >  
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

