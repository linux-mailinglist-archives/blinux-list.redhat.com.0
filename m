Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C31BD496DF7
	for <lists+blinux-list@lfdr.de>; Sat, 22 Jan 2022 21:17:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642882667;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=d9PbxEOHJyvilP1zA4+OMCEnpu45QhvYAskQxKmyhWM=;
	b=IHwK3vpba+yBBx7WW25yMs5h7RDeIgobdeeRoZX7vDLDlxODcAl5y60dacwpvGw8dcf0QT
	bQtMn3PffMnsyVwBGINi0azPpnu6OTm6kwP5nI0QkltnJlLYMNz6gJ1O2DZoP9XG1T/90J
	HMAMuFx6DYc2s7Uv3AHs3SllI1QcRao=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-391-ucYfsfx6N3acIbb9KgX_0w-1; Sat, 22 Jan 2022 15:17:44 -0500
X-MC-Unique: ucYfsfx6N3acIbb9KgX_0w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8B30A802924;
	Sat, 22 Jan 2022 20:17:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 80ED54D714;
	Sat, 22 Jan 2022 20:17:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 28A531809CB8;
	Sat, 22 Jan 2022 20:17:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20MKHCud006030 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 22 Jan 2022 15:17:12 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8C0A1404727D; Sat, 22 Jan 2022 20:17:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 87BF94047279
	for <blinux-list@redhat.com>; Sat, 22 Jan 2022 20:17:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 00C9F83718B
	for <blinux-list@redhat.com>; Sat, 22 Jan 2022 20:17:11 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-220-sO1-GESwPW644Ao9AcI8PA-1; Sat, 22 Jan 2022 15:17:08 -0500
X-MC-Unique: sO1-GESwPW644Ao9AcI8PA-1
Received: by mail-pf1-f171.google.com with SMTP id n32so2979359pfv.11
	for <blinux-list@redhat.com>; Sat, 22 Jan 2022 12:17:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=mEz54nIj+BRUO1bMfrC/hatv+rJb6xSIFvhmcF+3ESQ=;
	b=VD3yTZGDjTd98drIo7ywOJoLR0OpBZZb0KME+gUeS/WhI5ua5cFkXFD6jTy8iJ+3vp
	aES0pWFSaQrfvIegcuZyp2I2nd+UbsWKUUY+7A0m78x5jEgXXPrpSnTKUJspHiWp0ytz
	QhV4WxUxkkRIDm6GTOQ4hxHfTOK9ZQ+458USnUY7ak+1PHAULLfZKR24ia4s8ic4uIa9
	bXlWXMrH//u5KU7+FmMcGrwWeMuTOniy/NdQmEe1/05AAPr2F+vgvsvB++4iqmQuSB0J
	O3+AxDxkgEpUMfQjn6WsItVkdRKdIOuLhfKcHdDySS4HEne5nbT5hoBVgoMSaVJ66vOd
	eOBw==
X-Gm-Message-State: AOAM532Gt0TvaA7vJhFVs/wKGmWNyVKFiWfpZMNk0r1kxEgVOz2Qb1/W
	jl1JR5QwXUKqMxU+flg1+jJPBGg2dERE1/GVa6zjzZClfa0=
X-Google-Smtp-Source: ABdhPJz/1TxRNH38GLou5W3HgeYKGtJ8yw0HomLFNhJA/nGkPYaDxaDfSBCQTdcN1q4RHoDV++QQ5zx4LpZKERGnQB4=
X-Received: by 2002:aa7:8190:0:b0:4c0:1332:4c8f with SMTP id
	g16-20020aa78190000000b004c013324c8fmr8473062pfi.23.1642882627222;
	Sat, 22 Jan 2022 12:17:07 -0800 (PST)
MIME-Version: 1.0
Date: Sat, 22 Jan 2022 14:16:56 -0600
Message-ID: <CABKqQvF9-ZUkr5U6QssKsxhb7oD5iL4tLNORcWNYqJX-HDi9-Q@mail.gmail.com>
Subject: Favorite out-of-the-box accessible Linux laptops?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I am looking for a Linux machine to use in graduate CS courses. I probably
want Ubuntu or another common distro that comes with the screen reader (I
assume Orca) and other a11y stuff already installed. I like small, light
laptops (since I don't use the screen) that have decent memory and battery
life. Which machines are your favorites.

Thanks for the tip on VmWare the other day, BTW.

Amanda[0]
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

