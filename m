Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4917A35B659
	for <lists+blinux-list@lfdr.de>; Sun, 11 Apr 2021 19:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618163037;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BidSX1oI8B1moV8JSQsB325uE6oKhNnUQ3pSmDzlLpA=;
	b=H08wna54Of3E8yaQ7LffriBWKLO9R7dmOSBOY07i+VZJm49mb/RMdwHeXFRnx90jfvrAvH
	+DZziE+RNgU2mqJPYdeB26bn/Dx0NkNZBbFHOlaEyQiT0WLgjEQ+lP2iI95IoMbpjSfZ3v
	3vzWY2apeqja554OadgMESr/bEkf4/8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-64-NqcyrBeFMdCvqb5QSsT9zQ-1; Sun, 11 Apr 2021 13:43:56 -0400
X-MC-Unique: NqcyrBeFMdCvqb5QSsT9zQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B812818397A3;
	Sun, 11 Apr 2021 17:43:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 50D24100238C;
	Sun, 11 Apr 2021 17:43:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DA10644A5A;
	Sun, 11 Apr 2021 17:43:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13BHhY6J013132 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Apr 2021 13:43:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A1D7C2021468; Sun, 11 Apr 2021 17:43:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C6072021460
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 17:43:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 46E7980231D
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 17:43:32 +0000 (UTC)
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com
	[209.85.161.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-347-mKbl5uDYNZmq_vm1B-PN-w-1; Sun, 11 Apr 2021 13:43:30 -0400
X-MC-Unique: mKbl5uDYNZmq_vm1B-PN-w-1
Received: by mail-oo1-f46.google.com with SMTP id
	d11-20020a4a520b0000b02901e5e7013daaso644567oob.10
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 10:43:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:thread-index
	:content-language;
	bh=znOrMzRrsfFv2CgxAjMy3ZudKeWuoUEOn2GW5+NlaW0=;
	b=ptSXs/tBbc43uMv0nSLdAzic4i14Xz7/b2nqv83zzPCBMORWMrznz3zwi9zsxv/OpQ
	1vpwx5BSVjT5EvTA3B0IXwPlXvXyzUemHsMaZpOZr1XLSegSvf7oxzpBP6kdR35Rh33o
	qkJOX3CL7QkIqYtijUmvkVjEXgeR6OdNTue0N+iuqENOzk3XAs7sDGPJ52D/9v+71PxX
	4J9eYqS1ZKoWqHRH7q5hJpOy7rTsYDoVY4YJ4mX1nAod3MrtUj+b1+zLMFTESLGZ8pFh
	MDek5QOlNAr67NsB4dP0rEejSaHsOJ8LCjjpx4P78DhEfujTcIfF3PxGwck2hd26yMxW
	tNcQ==
X-Gm-Message-State: AOAM531cmti5Y6nY0aNjOPsry07iiUd2vuDgPyjghAyxQ/831PoLoumE
	OYxPkNiPNAU/os1It06gr3Zvrr20fagLaA==
X-Google-Smtp-Source: ABdhPJwCBYAvcQLfYn5cumoSJMXIU0E8+CvL5Bxzkj8uRsRkCc44Qrj/rBCQA2wCH4veuuicibTc0A==
X-Received: by 2002:a4a:4bc2:: with SMTP id q185mr20043409ooa.19.1618163009046;
	Sun, 11 Apr 2021 10:43:29 -0700 (PDT)
Received: from ElBraille ([2600:1702:20f0:4420:f159:22c0:8742:b833])
	by smtp.gmail.com with ESMTPSA id g9sm2087096otk.6.2021.04.11.10.43.27
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 11 Apr 2021 10:43:28 -0700 (PDT)
To: <blinux-list@redhat.com>
References: <alpine.NEB.2.23.451.2104111019030.6129@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2104111019030.6129@panix1.panix.com>
Subject: RE: archlinux
Date: Sun, 11 Apr 2021 13:43:26 -0400
Message-ID: <018501d72efa$2ddaba90$89902fb0$@gmail.com>
MIME-Version: 1.0
Thread-Index: AQE4SDpighlgn/K7LHlO9IUluvIuZKvtY2cg
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

What about systemdboot?  I think it is being used by default on the arch
iso.

Matthew



-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Sunday, April 11, 2021 10:22 AM
To: blinux-list@redhat.com
Subject: archlinux

What replaced grub for efi boot systems?
I ran archinstall and pulled in espeakup and dhcpcd and alsa-utils and 
enabled those  and the system wouldn't boot after that.  The only way grub 
could run was with --block and that by default is disabled in grub since 
it's unreliable.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

