Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 909C045A94A
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 17:52:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637686362;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YpaDgqH3tGEOOfqLTe+wT8+EnM1nPkCudjar6Rlkjig=;
	b=NOvHLEzWLgS6MkjruVTD6G2fX3NmAA14/kY/Pep1K05O/+i04gXlZfYHaQKR9UrHluLgYC
	Jhm55Io8T6HVzFynXHslz7aATG/GFR6ddVytccDSMMJnXOoyoGMYnXLMiIL3tNbHiwQJGF
	wLuxnQXsHCCA7Cdv/jp7J9C0VzIvymo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-323-WR1mh5lCMoyZQjKIwCbKbw-1; Tue, 23 Nov 2021 11:52:40 -0500
X-MC-Unique: WR1mh5lCMoyZQjKIwCbKbw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 47C461923763;
	Tue, 23 Nov 2021 16:52:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B7D2A5D6CF;
	Tue, 23 Nov 2021 16:52:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7A1CF4E58F;
	Tue, 23 Nov 2021 16:52:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANGqSge021592 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 11:52:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3233140CFD0D; Tue, 23 Nov 2021 16:52:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D34640CFD04
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 16:52:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 113C8811E81
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 16:52:28 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
	[209.85.208.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-580-U37Bvkj7MrKOCzsg-MvGYA-1; Tue, 23 Nov 2021 11:52:25 -0500
X-MC-Unique: U37Bvkj7MrKOCzsg-MvGYA-1
Received: by mail-ed1-f50.google.com with SMTP id g14so94937870edb.8
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 08:52:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
	bh=dY9barfqtVZGk6OOodHkcaMkrV3cTpiHyZ2r40I8CiI=;
	b=KTKG+QeYOqLGGZKhIhV3o7WIcOHR6CYMauUr+zLcfCCXYHyzztrM6YhPPYRhamaEow
	G8dTDkoXzr6SXCmZsvcuK+QS2WQbSbY79kiFwukivY9Qv2qmW6y4PPKd/k7iUJ9f9K0z
	5Wgg7KED4vRF2JklKHjKVcHWd4T5F8zt2MVjgAPPzkqZyOHgWACOD5hEiRq+R1ENPWF8
	6sy+Qn3tMMv80KSrM/zkLylPxFECpNdA7KzO3suWCoqWlMd/dIiG3VcucoKpZnwpm4Yn
	f1m1pPLimEBrtVtQuIBZNgUJEdWCwMgDQgvRjD5veqdnEqaytII2BUgK+NYE6AB6DKoL
	uVPg==
X-Gm-Message-State: AOAM532NzIrK9Mgm5mSFNrBnMcMuoeUFyYm/OJRD8BL0DOI2OauQ7+3B
	4b55WhzdwnARakqpvVc7fDk4UPHoPup2Zw==
X-Google-Smtp-Source: ABdhPJwsGborUsS9lnHMRMWyB0E+3Dm0/ID/OyVM9+SkDxabgubhpMg9fQd3BM13FFXB8VhWBm5VTw==
X-Received: by 2002:a17:907:20e8:: with SMTP id
	rh8mr9141897ejb.437.1637686344321; 
	Tue, 23 Nov 2021 08:52:24 -0800 (PST)
Received: from smtpclient.apple ([41.216.201.125])
	by smtp.gmail.com with ESMTPSA id
	p10sm5971660edj.91.2021.11.23.08.52.23 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Nov 2021 08:52:23 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.20.0.1.32\))
Subject: In the mood for something new
Message-Id: <512DE42E-6D25-4FB8-B249-4D8AF2E7C8F3@gmail.com>
Date: Tue, 23 Nov 2021 18:52:20 +0200
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

As many probably know, I am rather fond of Slint, usually my default install, but I am in the mood for something new.

I have done a few successful arch builds, but oh Lordy, not now.

I really do not like Ubuntu, so that's never gonna happen.

Anyone with any suggestions?

Maybe Fedora, what else?

Warm regards,

Brandt Steenkamp

Sent from my MacBook Air

Contact:

Phone: +27 (0)60 525 9181 <tel://+27605259181>

Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>

Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>




_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

