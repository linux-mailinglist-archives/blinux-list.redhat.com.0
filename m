Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id BFD5F3E5AB0
	for <lists+blinux-list@lfdr.de>; Tue, 10 Aug 2021 15:07:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628600829;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1IvlIJwA/kojvprZ470m6Ce1PY8O/AbDz1tXfBhM4KE=;
	b=OWVY0SLc+XG4Qk23KnfmYRGLiN2WZdsEi9W2bg2kxUduaQx5xj3odtozlz8yAgkdrpRP++
	7iwRP5Q4F2zNxBWdTmSMVHplPbXP7MdS5W8KwE/kbpQoPdNOF95e+7Yx7cJbvFylzMeLyh
	YeYOSjRUt8jSKiZEOJkr2gqaAZi5sNg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-320-MNhu6liVObK6_eTp9Y7Btw-1; Tue, 10 Aug 2021 09:07:07 -0400
X-MC-Unique: MNhu6liVObK6_eTp9Y7Btw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 431031008062;
	Tue, 10 Aug 2021 13:07:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D393E69321;
	Tue, 10 Aug 2021 13:06:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1DBE54BB7B;
	Tue, 10 Aug 2021 13:06:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17AD6iNj014507 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 09:06:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B6A2DDAF12; Tue, 10 Aug 2021 13:06:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B1B0CDAF0D
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 13:06:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 23A058D138A
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 13:06:42 +0000 (UTC)
Received: from mailbox.supranet.net (mailbox.supranet.net [66.170.1.9]) by
	relay.mimecast.com with ESMTP id us-mta-462-AEc0dD52NIub3C4Tex1oZg-1;
	Tue, 10 Aug 2021 09:06:40 -0400
X-MC-Unique: AEc0dD52NIub3C4Tex1oZg-1
Received: from [141.126.133.160] (port=37656 helo=localhost)
	by mailbox.supranet.net with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.82 (FreeBSD)) (envelope-from <john@godtouches.org>)
	id 1mDQxm-000FiO-Dg
	for blinux-list@redhat.com; Tue, 10 Aug 2021 07:34:34 -0500
Date: Tue, 10 Aug 2021 07:34:33 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Help, I need a Windows VM for my work
Message-ID: <YRJyWYpNsgGZW1De@abilitiessoft>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<AD585221-10D6-4BCE-A68D-3220079018C1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <AD585221-10D6-4BCE-A68D-3220079018C1@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Well, this will probably mark me as a fool, but I just use a Linux machine and a Windows machine connected by Samba. 
Computers are relatively inexensive now, so why bother with virtual machines?

John

-- 
John J. Boyer
Email: john.boyer@abilitiessoft.org
website: http://www.abilitiessoft.org
Status: Company dissolved but website and email addresses  live.
Location: Madison, Wisconsin, USA
Mission: developing assistive technology software and providing STEM services 
        that are available at no cost


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

