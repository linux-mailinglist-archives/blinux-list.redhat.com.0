Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AE86A442570
	for <lists+blinux-list@lfdr.de>; Tue,  2 Nov 2021 03:05:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635818745;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GaKCne2hYTDmre2EcU1ku38mRyrNHaSt+CaOdDfQdB0=;
	b=awqLViNM2tRRLnh/z5VQpwn+uU0AreetQcqPaqFgKcrXQIeqHsrWiIvC/6YDixSdGkt40L
	u2SJD0isDbi4kBs7B6TEjJuoiaIlDcmHdrhmEiaC7h2ajGPIqW+Gx3q+O5UyVBi+9d78ji
	Zx3d7Zk+aBrqWCrmQ0oQB3KTsHgd2FU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-509-hmpzL4iGO-SvwsNVehhQiw-1; Mon, 01 Nov 2021 22:05:42 -0400
X-MC-Unique: hmpzL4iGO-SvwsNVehhQiw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1E2FD19057A0;
	Tue,  2 Nov 2021 02:05:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E659C641AB;
	Tue,  2 Nov 2021 02:05:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0E0191806D03;
	Tue,  2 Nov 2021 02:05:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A225ROM017649 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 1 Nov 2021 22:05:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5FF6140CFD10; Tue,  2 Nov 2021 02:05:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A2C440CFD01
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 02:05:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 41A04899EC2
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 02:05:27 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
	[209.85.210.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-578-olHkEgXNOYOr_GkLIPxVyQ-1; Mon, 01 Nov 2021 22:05:25 -0400
X-MC-Unique: olHkEgXNOYOr_GkLIPxVyQ-1
Received: by mail-pf1-f178.google.com with SMTP id m14so18070065pfc.9
	for <blinux-list@redhat.com>; Mon, 01 Nov 2021 19:05:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=wNLPtTPFYT+XCbyHrklZr3Xjx/BKNx3qnT+EPoZpiQE=;
	b=jry5jx4c5JdtJAbFyUzYWt3GEXOkq5cFxgUsaS9mJqX2bU7CZIzID7x/AgnHmIoX5F
	Rmthd/9oua1mUZ+AXZJCT7Im7XQcXH9WXK2ef4rVu4XHrDV3L4o2tsnnyIOyqREH3a8T
	gHCkTHeTM7+zDqoyANn5sSmU9PYxLJApI62tf2/EUou+/wBvv3Z6o3kx866XWOkXM9oj
	yWDuwLGaJdud5d/sU5R50wxPhDL07+nAT01fEPveH5wB6jofLIZmey9m3vVDneFl/yvp
	S9AB/AdH+mMmIWt0s9mXazj2ad/cMEuE08t3aRFLfYWd4QPOftSWx77bTxSgDg1mjaQh
	t93Q==
X-Gm-Message-State: AOAM530YDcvU+oRAAExdIC6CFXUCaE1jVuV6Mpp/php8UBbIPPdYgvTU
	fH/S94I1eBkZyjpO5RVk4cyEz/cvOUVEjQ==
X-Google-Smtp-Source: ABdhPJyAm7HNaF06iqzSb8c4We3GtEhNm3A3u35gCMUrReTYgmF3z70FfpIU8PnoEgs4DrV3e/iIRQ==
X-Received: by 2002:a05:6a00:1a4c:b0:44b:1fa6:532c with SMTP id
	h12-20020a056a001a4c00b0044b1fa6532cmr33005897pfv.64.1635818724109;
	Mon, 01 Nov 2021 19:05:24 -0700 (PDT)
Received: from [192.168.4.38] (24-113-81-134.wavecable.com. [24.113.81.134])
	by smtp.gmail.com with ESMTPSA id
	d12sm16921861pfl.141.2021.11.01.19.05.23
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 01 Nov 2021 19:05:23 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: FYI - The Yggdrasil Screen Reader Project
In-Reply-To: <f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
Date: Mon, 1 Nov 2021 19:05:21 -0700
Message-Id: <1C66A443-A56F-4B20-895C-DD5B7FB80918@cfcl.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1A225ROM017649
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Members of the Rust community are reimplementing a number of C-based programs, making the argument that they can improve on the current state of the art.  I don't know whether this will turn out to be true, in general, but I'm happy to watch them try.

- Rich Morin


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

