Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6CAF4364D7F
	for <lists+blinux-list@lfdr.de>; Tue, 20 Apr 2021 00:09:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618870150;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Bu5BUu2iIEU+kPNMYLFOIseb5PCGRKp7n8pvyspo6Rs=;
	b=dLhiDtYpfoltZNWmbc5hW64uevID2OXRD1q9GK60afeRZuGjMGWaKOubichY2l1/hrXVZE
	cHVlYECuSPE81gJMT1pVJ2kaouPPmWQA9VjdOwl9YfakslxSplWEGqyTxNwGq9EZliPzhb
	2Jogj+B6IjwxsplaxONTbmTZBMi8mjk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-33-qhO2QSwGM1SD1Tl5e7xa0w-1; Mon, 19 Apr 2021 18:09:07 -0400
X-MC-Unique: qhO2QSwGM1SD1Tl5e7xa0w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0EDFB8030A0;
	Mon, 19 Apr 2021 22:09:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 387E55D6A8;
	Mon, 19 Apr 2021 22:09:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B87901809C82;
	Mon, 19 Apr 2021 22:08:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13JM76Bi015396 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 19 Apr 2021 18:07:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 232EE110DBB7; Mon, 19 Apr 2021 22:07:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E692110DBB5
	for <blinux-list@redhat.com>; Mon, 19 Apr 2021 22:07:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 73FBE185A7A5
	for <blinux-list@redhat.com>; Mon, 19 Apr 2021 22:07:02 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
	[209.85.219.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-260-epXeK-PGPmS2aXmMsmjZSw-1; Mon, 19 Apr 2021 18:07:00 -0400
X-MC-Unique: epXeK-PGPmS2aXmMsmjZSw-1
Received: by mail-qv1-f49.google.com with SMTP id i11so12165270qvu.10
	for <blinux-list@redhat.com>; Mon, 19 Apr 2021 15:07:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=/oh7+VgB0U2thW7Si6zOxZVoqj4Z1pBXusRQYgQbdSI=;
	b=EI2h1eWpNH6jGSIpA+OLUcUFrx3qi9TMUmbHu1jJeNB2BYM1AZ6W71H7kSoQ+Hv5Nr
	esFJiIApKkFvDpd4/ZaBk9UetypnjiceervQkPcikdAPsVGTHLdZcKjRe38SZYcPLbLU
	j+0nPXm/55DN/4ZDjRCvpxakMij9XToLDBGDRAJlKPH1gPKoj8stnNWDu7ajrTmzZG4R
	LVxZ1+/TAC8wqUpFYpM9VCdEOBsbuGXCPx9sDj7F03XfOQxD3NSP8tRfP5J830p/7XSP
	MBgt6QVeqyVmfso5lJaHcZ5RSab/b2EBzovzXX/OqJ0SEJqXL/ndW5xcHzOrjIqcQxv0
	Hcxg==
X-Gm-Message-State: AOAM532i2SwSsM7h3seyffz0eeB3jq+Kpd3zynTp1DojLMMxHAm6ulNV
	d+1bvOnxAd/oFk7qzU+99dNVMjsjN+qPtrfjn/YLpxuV93E=
X-Google-Smtp-Source: ABdhPJwcYeeLay9NCPD4d04UUnNhCNAYDpmnzcT6pIIJ0Y+nd5RM3MB3qNhY83j1zoyJaddTHgWDfzuCYkM4CpxIM8U=
X-Received: by 2002:a05:6214:1906:: with SMTP id
	er6mr23772201qvb.38.1618870019901; 
	Mon, 19 Apr 2021 15:06:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:eb4e:0:0:0:0:0 with HTTP; Mon, 19 Apr 2021 15:06:59
	-0700 (PDT)
In-Reply-To: <a140ad1-3ebe-3bbb-bd31-7ae4c42389a9@hubert-humphrey.com>
References: <FE0D78A0-1A64-476D-ADEB-B54DED7B74BB.ref@yahoo.com>
	<FE0D78A0-1A64-476D-ADEB-B54DED7B74BB@yahoo.com>
	<a140ad1-3ebe-3bbb-bd31-7ae4c42389a9@hubert-humphrey.com>
Date: Mon, 19 Apr 2021 22:06:59 +0000
Message-ID: <CAO2sX30SdpW+ORoaD2RHSsMKpn2PoUTWJOSG_dy+YRXuTEhnzw@mail.gmail.com>
Subject: Re: speech-dispatcher and espeak
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm using Debian's repositories, not Ubuntu's, but the version of Orca
I have running depends on speech-dispatcher, and while
speech-dispatcher doesn't depend on specific TTS engines or their
speech-dispatcher modules, the version of Speech-dispatcher I'm
running recommends speech-dispatcher-espeak-ng and suggests the
speech-dispatcher modules for several other TTS engines... and trying
to remove speech-dispatcher-espeak-ng broke speech on my system, both
in GUI and Console, forcing me to restore a system backup... Since I
doubt Ubuntu has made any drastic changes to Orca and it's
dependencies, I'd expect your system to already have Speech-dispatcher
installed, and probably at least one of espeak and espeak-ng and their
corresponding Speech-dispatcher modules.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

