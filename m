Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 30DA018486E
	for <lists+blinux-list@lfdr.de>; Fri, 13 Mar 2020 14:46:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584107182;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HIJx6iBgHRBNloFrFW9SaFlknLqp1C8xE4O/Q8Za2oA=;
	b=CMB26cPGXm9fOnq85JT3EVM+0GqRXOf95ZZp7/numdAL1l4hvk/TU5KTfXYXW28eqG8VKA
	xL9b0CApc5izQdUkDDdaM89XpTilTLPGP8vj5uJ9MloygGy4iNWQQEMeBLHLH4pMVHIRhe
	qYxoQCBy54ANexx+LOg10AyATOEZu88=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-24-mKOAQmWiPViqzQMOmOEc_A-1; Fri, 13 Mar 2020 09:46:19 -0400
X-MC-Unique: mKOAQmWiPViqzQMOmOEc_A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5A990800D50;
	Fri, 13 Mar 2020 13:46:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18BDF9051B;
	Fri, 13 Mar 2020 13:46:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ABEC218089CD;
	Fri, 13 Mar 2020 13:46:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02DDkBRH004859 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Mar 2020 09:46:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9C7952166B32; Fri, 13 Mar 2020 13:46:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97B012166B28
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 13:46:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 70046802BFE
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 13:46:09 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-273-UM1KHpifMu-dH249oZYCuQ-1; Fri, 13 Mar 2020 09:46:07 -0400
X-MC-Unique: UM1KHpifMu-dH249oZYCuQ-1
Received: by mail-wr1-f44.google.com with SMTP id x11so7419830wrv.5
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 06:46:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
	:subject:mime-version:content-transfer-encoding;
	bh=FwawCHUpG2VyKDB4zpKYQhrmWTuhiFEEkAuKfIj67iw=;
	b=i5lIQxwK6Es/EBHZYX0/b/LJY/wgSwM6sREz9052lAa7AzHPGYMVrDhSCXk47AlbIa
	gyGqnlzjm5fLLyYs9dfrwSuaCJHBqCzlkqIeoLElAd4sSIMIaaqr7QiLm0svJ6hoHcKj
	tY9nQikXUa+ouodl8hxC+XfbJhquMuL15XWBZ5V1RyhoRPcCTnTcZRu5hjd7dIjQ68G1
	ZQNj+kGU/xg1h+X9K1Z0jqw8BiHEXTWJhPCfoOYQDr3NicwWnp8iHqxBtyh4K8O+aa8K
	C8QnU3B+8zPvErYWvGZQEerL+IobrgSLSRI3tsM4sUc9dNM5iG+NKCBbdDB+kOa3J6ss
	hzOQ==
X-Gm-Message-State: ANhLgQ3QNfIM1WpxNHrsoKwGf67D3J+fWFlvf83TCF57gJ+uk8gYJPe5
	tKHEtD56CQogQ2FWE4vLtyzHg3vDnwg=
X-Google-Smtp-Source: ADFU+vvQ/wnsY7yYEKFZt13IVWV0oxWri1zH3Y0va7QM4sHUbeeQB51WpubKQtBuGM/Wx9d9dywXOQ==
X-Received: by 2002:adf:f342:: with SMTP id e2mr17663269wrp.15.1584107165727; 
	Fri, 13 Mar 2020 06:46:05 -0700 (PDT)
Received: from [127.0.0.1] (cpe-75-189-192-174.nc.res.rr.com. [75.189.192.174])
	by smtp.gmail.com with ESMTPSA id 2sm45935422wrf.79.2020.03.13.06.46.04
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Mar 2020 06:46:04 -0700 (PDT)
Date: Fri, 13 Mar 2020 13:45:56 +0000 (UTC)
To: blinux-list@redhat.com
Message-ID: <b5bf45db-a652-4c2e-a01d-9960ce07488c@localhost>
In-Reply-To: <000a01d5f93d$6af79770$40e6c650$@yandex.com>
References: <6b72c0c6-6a71-e688-4448-789876e33a34@slint.fr>
	<4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
	<000a01d5f93d$6af79770$40e6c650$@yandex.com>
Subject: RE: Stormux is born.
MIME-Version: 1.0
X-Correlation-ID: <b5bf45db-a652-4c2e-a01d-9960ce07488c@localhost>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sorry, I sent a bad link to the chat. The correct link is
https://t.me/stormux_chat
~Kyle


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

