Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 934A3504B77
	for <lists+blinux-list@lfdr.de>; Mon, 18 Apr 2022 05:58:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650254310;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ourS10rahdyNjt7R2D1n2r1uirVnMLr1zhkuEb0jKgI=;
	b=L0JTydYnG489qFUbhWBefOkKH0hO722fslJjyCTKtDjrCp916/bOhPwmbF0US0HPHh50TK
	/3TpFbvIBUDyykhlT2r3LqsL7rlHKY7OHoCJnrDzXCZNuM+xXuRB6vwMZLcRcRXc0bkSYy
	N8SO51CV64FlFReBreKeSAbCCN2+9Uw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-398-_I67EcYQP5eJnH7PNFcjZA-1; Sun, 17 Apr 2022 23:58:27 -0400
X-MC-Unique: _I67EcYQP5eJnH7PNFcjZA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AF1261C05AE4;
	Mon, 18 Apr 2022 03:58:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F0314574B54;
	Mon, 18 Apr 2022 03:58:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 686B81949762;
	Mon, 18 Apr 2022 03:58:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 17 Apr 2022 23:57:39 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: OT: anroid volume control app
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.9122.1650252891.111208.blinux-list@redhat.com>
In-Reply-To: <mailman.9122.1650252891.111208.blinux-list@redhat.com>
Message-ID: <mailman.9147.1650254303.111203.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I can't seem to find such an app currently, but if you press the volume 
up or down one time, you can adjust either the media or accessibility 
sliders manually. You can quickly set either to 50% by tapping then 
holding the slider for about 1 second, or you can adjust either slider 
by tapping then dragging it up or down. Drag adjustment is in 1% 
increments, but it doesn't take much to adjust that way. Unfortunately I 
see tons of remapping apps and even more sliders, widgets and volume 
profile managers, but I see no way to change the hardware buttons to 
increase or decrease the volume by a smaller amount.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

