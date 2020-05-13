Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 1A8B91D11FD
	for <lists+blinux-list@lfdr.de>; Wed, 13 May 2020 13:57:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589371024;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ugUFkjiRcxHHGYVrdYn3Qlw4yeJX5k+mnoVPe5pNlaI=;
	b=TujJPDJhOD8s5kHt3PbrD/x0NqDcnT63UheCQYR1PDnHP8NbOip4BjvXol8gY3hSVsWFFY
	urWRD7l/nXysvzhGq4s9fAaO2qEhb1JawxCf3d33lQK5LKLca7sW89IXIzYESMA2xtnsVL
	mfWP217E9mHtRcNDW+qC7V9hjPM26q8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-404-W9dvUiHGMWmBh01GExZ7RQ-1; Wed, 13 May 2020 07:57:02 -0400
X-MC-Unique: W9dvUiHGMWmBh01GExZ7RQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CDDBC461;
	Wed, 13 May 2020 11:56:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B3B53619BC;
	Wed, 13 May 2020 11:56:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 510634CAA0;
	Wed, 13 May 2020 11:56:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04DBtkH2015687 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 May 2020 07:55:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3A3202156A4A; Wed, 13 May 2020 11:55:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 35CD12156A49
	for <blinux-list@redhat.com>; Wed, 13 May 2020 11:55:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 394D980CDAE
	for <blinux-list@redhat.com>; Wed, 13 May 2020 11:55:42 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
	[209.85.210.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-189-GS1sof9lO_C6y-JQuoDSzA-1; Wed, 13 May 2020 07:55:39 -0400
X-MC-Unique: GS1sof9lO_C6y-JQuoDSzA-1
Received: by mail-ot1-f48.google.com with SMTP id k110so13170214otc.2
	for <blinux-list@redhat.com>; Wed, 13 May 2020 04:55:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=O7I3CYuR/44BnBVOOCrJNRcOP34C/rE8YrGBVUoslds=;
	b=ElCc3EHVtEVeDdeFVI63gA3jSt5bEB2cGK9KQ1jYohMhRF5/1x/UPIgux90YJZmrg8
	a9Jn1gFfqPjn/MnhBwbCXioNmHzXPVbYcyXYuEIB8noS6+kRFnmOVe/8KN/oUesm1qdF
	EUPqfav24Bbvducow6OBH8BWbgHBligNVSh+hvg15fuT5fnU/xtd9VrAtIuj4Hnf639L
	kvX5afPFcCpEj/M7xrlQX9KQ8Bpc7/br6cM9YJC2Z84jkb1Km/O43xNxZXYd/9giO0IH
	lQj0KVdWY0UqYcCLO6fz3sgzoDkmKist2thEBEaKH2QGZTC0fAhxKAmjuiJYX6I4Hfq+
	73Sg==
X-Gm-Message-State: AGi0PuZTZetQ78833ck0yeDFp3uTyTvQYfGNn705KlKkRzFKJK/D+qzs
	OGSgwhE5Ul6kcDn0/NbN6GrT9J7v
X-Google-Smtp-Source: APiQypIaxvm3s4f64LTVdcBTrwNpijApw7szJL6IdMoS061XB8j8OaiHfvk6TbWA8pbVGF3OKhMItQ==
X-Received: by 2002:a9d:68c5:: with SMTP id i5mr18909553oto.251.1589370938430; 
	Wed, 13 May 2020 04:55:38 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:c459:2f58:5ff0:25fb?
	([2601:3c2:8200:9360:c459:2f58:5ff0:25fb])
	by smtp.gmail.com with ESMTPSA id
	d10sm4181901otp.19.2020.05.13.04.55.37 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 May 2020 04:55:37 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: b s d and orca
Date: Wed, 13 May 2020 06:55:37 -0500
References: <12986DCD-076F-4781-AC3C-DECFD69D5A1C@gmail.com>
	<A3925F9E-75B0-4E9E-AF8E-EC29BF01496D@gmail.com>
	<b12267b0-944d-d609-53dd-11e9375f002d@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <b12267b0-944d-d609-53dd-11e9375f002d@gmail.com>
Message-Id: <FCD3A752-75FC-4A33-BEAE-D96D42DB15DB@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 04DBtkH2015687
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I just downloaded a new version the other day.

> On May 13, 2020, at 12:52 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> There was at one time something called GhostBSD, not sure if it's still alive. It ran GNOME at one point, but last I knew it ran MATE. I remember it not speaking, not because Orca was not included, but because Orca needs Python 3, but BSD ports at that time only had Python 2. If this has changed now, perhaps GhostBSD will speak now, assuming it's still being developed.
> 
> ~Kyle
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

