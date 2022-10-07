Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6F35F7E84
	for <lists+blinux-list@lfdr.de>; Fri,  7 Oct 2022 22:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665173490;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zy6E5E+gsa1kZIkQK37R0fToLJeWh9Mjo8mypUXnFGo=;
	b=JyWN+pwyRUXHzsy/ULeZVn06kyitsw7xyn/0N+p0fyfDH0PNIcD5InCEQ7hvPG4XDcW4v1
	MExt2NEAVp4bAqdo3EnRVqvENbqQZ6Hnv/cYBVzg1ce+q8DUapmM0n43qYxWOqIbQ8ixFf
	VwOd04FM48uKEl5AwZQXs6UxxQvMvDU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-39-1nftXZUePfeJlH3jgolOuw-1; Fri, 07 Oct 2022 16:11:26 -0400
X-MC-Unique: 1nftXZUePfeJlH3jgolOuw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 361BF3C02193;
	Fri,  7 Oct 2022 20:11:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 337AB535D21;
	Fri,  7 Oct 2022 20:11:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 517F11946A6A;
	Fri,  7 Oct 2022 20:11:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: tdsr
Date: Fri, 7 Oct 2022 15:11:07 -0500
References: <mailman.6158.1665083042.6081.blinux-list@redhat.com>
 <mailman.6381.1665083367.6082.blinux-list@redhat.com>
 <mailman.6388.1665085240.6082.blinux-list@redhat.com>
 <mailman.6189.1665155373.6078.blinux-list@redhat.com>
 <mailman.6548.1665156708.6075.blinux-list@redhat.com>
 <mailman.6206.1665159575.6078.blinux-list@redhat.com>
 <mailman.6884.1665165410.6076.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.6884.1665165410.6076.blinux-list@redhat.com>
Message-ID: <mailman.6259.1665173472.6078.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Did not work with .bash_login
That was tried with console ctrl alt f 2, while the g u i was running all along.
Should that have made a difference?

> On Oct 7, 2022, at 12:56, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Try putting
> 
> $HOME/tdsr/tdsr
> 
> in your .bash_login file. The shell should expand the tilde ~ character to your home directory, but $HOME is almost guaranteed to expand correctly. Just as a test, try running
> 
> echo $HOME
> 
> and you will see the expected output.
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

