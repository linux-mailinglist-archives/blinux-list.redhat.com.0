Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7615386EA
	for <lists+blinux-list@lfdr.de>; Mon, 30 May 2022 19:51:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653933115;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tXd2FlT5R+nbFTaI44N/OrWJaa3nSi7DdIlyv+ras7U=;
	b=eEbqt7cGlkAoUy6NWvzCM2bhsHycKOEVvYhFSEQ9kiw8DFPAvoHkqwRMnuldJhcubb/3fr
	PlaD2yi2+YofLKrbK2cqdPAKhVmuovBLSs+LNft7TvG27S6QwHaOYL068MHcg5K2oKxRjO
	XLXmPsldPUHvN/Ci1PrsyTCe/AyO9PQ=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-376-d-AS_ix8M6aj5oqLD9tduw-1; Mon, 30 May 2022 13:51:52 -0400
X-MC-Unique: d-AS_ix8M6aj5oqLD9tduw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 24B5C3816840;
	Mon, 30 May 2022 17:51:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CBF051410F37;
	Mon, 30 May 2022 17:51:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 29FED194705E;
	Mon, 30 May 2022 17:51:46 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 30 May 2022 12:04:44 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible ftp
In-Reply-To: <20220530114935.38e1f22c@bigbox.attlocal.net>
References: <mailman.19063.1653928602.111210.blinux-list@redhat.com>
 <20220530114935.38e1f22c@bigbox.attlocal.net>
MIME-Version: 1.0
Message-ID: <mailman.19518.1653933105.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Following up here, I also often use curl

   $ curl ftp://ftp.example.com/path/to/download.tgz
   $ curl --ftp-create-dirs -T local.tgz ftp://ftp.example.com/some/location/

(you only need the "--ftp-create-dirs" if you're uploading to a
directory that doesn't exist)

Hope this helps,

-Tim

On May 30, 2022, Tim Chase wrote:
> Tim here.  I've always just used the command-line client (since the
> late 80s or early 90s over dial-up?) which is accessible as any
> other CLI application:
> 
>   $ ftp ftp.example.com
>   ftp> ls  
>   [files & directories]
>   ftp> cd /pub
>   ftp> ls  
>   [files & directories in /pub]
>   ftp> bin  
>   200 Type set to I.
>   ftp> get some_file.zip  
>   [file downloads]
>   ftp> put local_file.mp3  
>   [uploads "local_file.mp3" to the server]
> 
> If you're only transferring text documents, you can skip the
> "bin"ary command, letting it jockey line-endings for you.  But most
> of the time you want to use "bin"ary mode to ensure the file
> doesn't have newline-translation during transfer.
> 
> -Tim
> 
> 
> On May 30, 2022, Linux for blind general discussion wrote:
> > I need a way to connect to some ftp sirvers, what would you
> > recommend, weather it be CLI or GUI really doesn't matter to me.  
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

