Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7794CDCC0
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 19:38:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646419107;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3QnKDxOmMn2ezNAQ+HEGzlBzW4jEU6bpnOC4CYMiV7w=;
	b=hL5D1GEP3gw4m+5Kwr5UDXv8Rdkvx0KNcZnbafapoxeh6MIZcb3Zfe7+APCV1xiJhZ4V3m
	acHujZH3FxxlTKoxAR6E9sPCLO/7Cva/NtOL54c0L8mPMs47I2N4brMFNNCq6WTGA9ThCx
	VQAsg602vzBdKu8IuN+w0eAnt6PaggY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-583-7ey5CFNrN1mDtWVssOXJUg-1; Fri, 04 Mar 2022 13:38:23 -0500
X-MC-Unique: 7ey5CFNrN1mDtWVssOXJUg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D28AF51DC;
	Fri,  4 Mar 2022 18:38:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 86B8687B8D;
	Fri,  4 Mar 2022 18:38:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EB79B1809C98;
	Fri,  4 Mar 2022 18:38:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224IcFco030425 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 13:38:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 071182024CB8; Fri,  4 Mar 2022 18:38:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 028EC2024CAE
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:38:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 62D4E833963
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:38:11 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-472-W64VX3isNom4yqEs_DSCLg-1; Fri, 04 Mar 2022 13:38:09 -0500
X-MC-Unique: W64VX3isNom4yqEs_DSCLg-1
Received: by mail-qk1-f169.google.com with SMTP id f21so7106642qke.13
	for <blinux-list@redhat.com>; Fri, 04 Mar 2022 10:38:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=rbpKkIddfaNE/dLtq8+XrgnTjp2OCkksSYm5RxFkT/4=;
	b=ro9WDjOi7mNiStQt8lus8teOQslm5FPUc7lqfp+3JBiVypXwcdvb3+ufc/XC9Mwx/5
	0qMwhPXoTL5Gb0dZLb67dk9SW0du7aY93+b7xHThG/B0eumf6W3jj3CbriDWfde3n7Wz
	OhWNyIY19Tr3PF01QS9VnspFY8FeVDB5Lx1pGUTO5XRmwOc5dm0zyQgGSP/3kwtt7R28
	pV5WLEFYrfiUnjD6SHZyFY4BcG2I7s5ceiTYdbTFRoj5SF2s+9+Ne8gPzE17HIvSE42W
	ckkubXygW3cVhC/00ezPsZvOLszuLbOvJSHN4TeVzZrJYxnHJDjMFrjPCm6WvqvDceV/
	7EOw==
X-Gm-Message-State: AOAM5331idjSbWav3kMZkyC1aQpcklIAx8PH3Gf7v2Yu3R66qja2hyC8
	k4AQNInKu4kJ0qtENqfFitf1UnHndge0QO/gbkGcdgpQ6vo=
X-Google-Smtp-Source: ABdhPJwpW06QMrcIG51BvcjU5jgGArEHWhakU9pvMlF4W4LUL9t5qM1DtyCvOuvy+chYIXRXqtM4N1WPvxZXoZbefNA=
X-Received: by 2002:a37:a493:0:b0:46b:1df6:a85b with SMTP id
	n141-20020a37a493000000b0046b1df6a85bmr3408199qke.469.1646419089285;
	Fri, 04 Mar 2022 10:38:09 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5cc2:0:0:0:0:0 with HTTP;
	Fri, 4 Mar 2022 10:38:08 -0800 (PST)
In-Reply-To: <9c284d34-9e1c-a3ac-72fc-ba0c041877ec@gmail.com>
References: <YiHciAX/R+L65BU3@waffles>
	<Pine.LNX.4.64.2203041303520.273578@server2.shellworld.net>
	<9c284d34-9e1c-a3ac-72fc-ba0c041877ec@gmail.com>
Date: Fri, 4 Mar 2022 18:38:08 +0000
Message-ID: <CAO2sX33E7R760BEc4kn+F5U7tNCWijUSPc_PbK9-OQ+pJ1psfg@mail.gmail.com>
Subject: Re: Google is nuking simple username/password sign ins?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Well, that's just vague enough to be worthless.

While on the subject, anyone know of any Gmail alternative with a web
interface comparable to Gmail's basic HTML view? If it adds in such
missing features such as forcing replay to list as default when
replying to messages from mailing lists, manually merging
conversations, and having folders/labels for contacts, that would be
nice to.

Fortunately, I don't use many of Google's services(Gmail, search,
YouTube) and Gmail is the only one that really requires logging in
often enough to maintain a persistent cookie on my personal machine.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

