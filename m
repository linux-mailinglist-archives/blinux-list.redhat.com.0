Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id E7B20367561
	for <lists+blinux-list@lfdr.de>; Thu, 22 Apr 2021 00:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619045746;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Pi3RoOWxnVGvyQUaYY8SMQ/bBVrV3mtyftbA59L5b5A=;
	b=R+vPPDmo1yjhHXIvOwZiHm8UeTRdC+/ewomaenvKyRjXFieG5IFEy1/T02tCTxGREwgPmq
	gErD4fHGoztHwIqEM4aaHGYDSjdk41AoQvmokWfhdANKfYbGDZFkOW3Uav+wmVL5/rgFUN
	TwB7HDXSnTQE/Qn81MKCVghBCikhEw0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-476-0GvBbLstNhOACLiaKypMuQ-1; Wed, 21 Apr 2021 18:55:43 -0400
X-MC-Unique: 0GvBbLstNhOACLiaKypMuQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 80AFB83DD21;
	Wed, 21 Apr 2021 22:55:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D23095C1B4;
	Wed, 21 Apr 2021 22:55:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BAA3918095C9;
	Wed, 21 Apr 2021 22:55:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13LMtNhn016621 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Apr 2021 18:55:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7E58C115D347; Wed, 21 Apr 2021 22:55:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A519115D343
	for <blinux-list@redhat.com>; Wed, 21 Apr 2021 22:55:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7FC3F8001E8
	for <blinux-list@redhat.com>; Wed, 21 Apr 2021 22:55:20 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-530--UJkfzobOvq5HJW66mTXCQ-1; Wed, 21 Apr 2021 18:55:18 -0400
X-MC-Unique: -UJkfzobOvq5HJW66mTXCQ-1
Received: by mail-qk1-f178.google.com with SMTP id z2so7590160qkb.9
	for <blinux-list@redhat.com>; Wed, 21 Apr 2021 15:55:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=WAmcZyJr8X5v5moIwEEbXOj3sk/7QcGMdD5xpVESQBU=;
	b=Xl5xtFEx8XypfipHax0C9SgC70DoG+EM+a05dnR5VHT49wajhh2Cd2FiJZ/OLfFsYn
	Bjg4SSF1Ullhi1f9l3oXTtFBH+szPFlczyaHnxKPmtbDMHHTI8k91s5Xum5B5p2F4Eir
	Ox8v76zwkQ0iu1JuC+ypzSWfDxC0nOjOaunu8hYloXxIJq7M7545IdoaL+ciZKZuKPWD
	ewE20FneYYxSawuzFuoViJ3P/6+dJvyaqyM3rmq6PnS6rgnYMrRFbNL+N9YyBsKKxz7Z
	lRqWL5xtBr7+rrUAjVcFEpcK1PLEMkc/LljpBicExmzTz6BMwmr/vFwkAYXWOGsnowxx
	K0ug==
X-Gm-Message-State: AOAM532khMfyaLAMKh8i07CzZ+Cr0JGhoDE3L/aCksEHuoldg5hiFZLk
	2kQa5ICex43zJOgUJGdSEvdhgx5zJYJPd+0EgoJyYgzN58Q=
X-Google-Smtp-Source: ABdhPJwP3Vdhs8EugsvmnBgW30Luvkv5wNxVTMSm5WujNRzgXqgKY0PRR/OdAw1fLDmmgMDyMKI8rkM6kGRTPjbzz1c=
X-Received: by 2002:a37:6c01:: with SMTP id h1mr620991qkc.182.1619045717775;
	Wed, 21 Apr 2021 15:55:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:eb4e:0:0:0:0:0 with HTTP; Wed, 21 Apr 2021 15:55:17
	-0700 (PDT)
In-Reply-To: <alpine.DEB.2.22.394.2104211249500.102398@precision-M2800>
References: <alpine.DEB.2.22.394.2104211249500.102398@precision-M2800>
Date: Wed, 21 Apr 2021 22:55:17 +0000
Message-ID: <CAO2sX31AO7xv-CL+MKJVTq2FgywK1R1as-SvEQ3BoKaHgskzeg@mail.gmail.com>
Subject: Re: 3D design software
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I think I heard somewhere that openscad offers an accessible scripting
language for 3D modeling... never really bothered to look into it
though.

On a somewhat related note, anyone know an accessible means of
generating vector graphics short of writing .svg by hand and having to
do all the math for where all the points should go manually? And can
recommend an affordable, linux-compatible means of cutting/engraving
vectorgraphics into things like chipboard, plastic sheet, balsa wood,
etc.?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

