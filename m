Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B98C250914B
	for <lists+blinux-list@lfdr.de>; Wed, 20 Apr 2022 22:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650485883;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PkDFZ8dN+2Y+z/Xe9tkBk4qWJOheAuSciFimCMJYAk4=;
	b=B0wDG2S/ie/33DZKe5yDl2I8QAg+zjfQM1EiupwPxmNDnKUXtIcDIrG4QaAyp7szD4qRfW
	L170xYBlVAXNvyz7CsXF5sEvlV504kZJiomSVXHRJBB4pteE3EgQJNsxCu1iP0n7w/4gj0
	ur7KALG5gDaQnwBL36syoe4NxjhS3Lk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-282-x6U0EQjbOTKMDktUNKWmow-1; Wed, 20 Apr 2022 16:18:00 -0400
X-MC-Unique: x6U0EQjbOTKMDktUNKWmow-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 54F1F29ABA08;
	Wed, 20 Apr 2022 20:17:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A6B3340D0166;
	Wed, 20 Apr 2022 20:17:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5E6AE1940350;
	Wed, 20 Apr 2022 20:17:50 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Textbased installation of VMs in VirtualBox
In-Reply-To: <mailman.9836.1650463902.111210.blinux-list@redhat.com>
Date: Wed, 20 Apr 2022 13:17:42 -0700
References: <mailman.9706.1650458473.111206.blinux-list@redhat.com>
 <mailman.9836.1650463902.111210.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.10095.1650485870.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Apr 20, 2022, at 07:11, Jace wrote:
> 
> I'd suggest something like Vagrant for it if you're comfortable with editing the Vagrantfile it generates

I've used Vagrant and found that it worked quite well for me.  Then again, I'm a programmer...

- Rich Morin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

