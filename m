Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BC76A018C
	for <lists+blinux-list@lfdr.de>; Thu, 23 Feb 2023 04:37:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677123473;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vQF8clBcmFU++6DSRQ6K7z8y+syPX6ThRJr73xVrxQc=;
	b=iVI1EpIM7NEB7dvregI3ugLGCULQpkAkn3qpjElyZbdBCq+lx4WPEwGqCLUjVHXqoZxTh8
	770ely/Ij1XylsXW9e8d8Jwk+22DYxa3fr+0OuvGc9t392xxi9HtZNG7prNd+2SXSDeiMZ
	gkzvjWmaTtTV64yuVyOdYPebBwdUpR0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-112-eFJJlD_WPTuO93m0w_PH7g-1; Wed, 22 Feb 2023 22:37:50 -0500
X-MC-Unique: eFJJlD_WPTuO93m0w_PH7g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 099081875042;
	Thu, 23 Feb 2023 03:37:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 909F22026D4B;
	Thu, 23 Feb 2023 03:37:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2786A19465B9;
	Thu, 23 Feb 2023 03:37:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.2\))
Subject: Re: What a find! DECTalk!
Date: Wed, 22 Feb 2023 22:37:40 -0500
References: <mailman.886.1677038394.686542.blinux-list@redhat.com>
 <mailman.1848.1677098798.686540.blinux-list@redhat.com>
 <mailman.1792.1677111557.686539.blinux-list@redhat.com>
 <mailman.1914.1677118576.686544.blinux-list@redhat.com>
 <mailman.1921.1677118866.686542.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.1921.1677118866.686542.blinux-list@redhat.com>
Message-ID: <mailman.1956.1677123464.686537.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks Kyle,
I got it now.


> On Feb 22, 2023, at 9:20 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> apt-get install build-essential libasound2-dev libpulse-dev libgtk2.0-dev unzip git
> 
> 
> OK this just gets you the tools you need to compile the source code. Now you need to run
> 
> git clone https://github.com/dectalk/dectalk.git
> 
> cd dectalk/src
> 
> and then you can run the rest of the commands you could see on the Github page and follow those up with
> 
> sudo make install
> 
> to actually get the software to be recognized by speech-dispatcher. Hope this helps.
> 
> ~Kyle
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

