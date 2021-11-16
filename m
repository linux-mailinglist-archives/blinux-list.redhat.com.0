Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B88452825
	for <lists+blinux-list@lfdr.de>; Tue, 16 Nov 2021 03:56:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637031398;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Swp4/NDiQTFHFT4mE6Le0XSkKMlcQXdf+TH5YYZv4IQ=;
	b=OsaIMp/+LHF2fLbECoDKiSDjvV7T3Lm+nnyk/TWBaPFaFj/QBe/8H12YPHIVQBOdqWTCG8
	VZ+xO9gzDz1wgyudjOC9oygi9FaTc/u4pHuEjyI0Gtmct38LdniSEVRlSFKdqFPlkO6Z4N
	EB03XGS3Fk3FzO3LB/9m5GUk7i33Y1I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-578-PgPfw8S7Mg-GinIeRxhQHQ-1; Mon, 15 Nov 2021 21:56:36 -0500
X-MC-Unique: PgPfw8S7Mg-GinIeRxhQHQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D542A10066F3;
	Tue, 16 Nov 2021 02:56:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 489055C232;
	Tue, 16 Nov 2021 02:56:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 863711819AC1;
	Tue, 16 Nov 2021 02:56:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AG2rlcM013998 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 21:53:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 476E92166B26; Tue, 16 Nov 2021 02:53:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4259C2166B25
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 02:53:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DF00885A5B5
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 02:53:40 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-390-FP2bamEHNLuMxAptl467kQ-1; Mon, 15 Nov 2021 21:53:39 -0500
X-MC-Unique: FP2bamEHNLuMxAptl467kQ-1
Received: by mail-qt1-f169.google.com with SMTP id t34so17630785qtc.7
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 18:53:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=zwou2xRTKsBbcec2ULKIFZ2LAbkYs5PT6fuk7eEHO30=;
	b=N6ZkfwGeTYyaXzCFo6gUx3qRnoj3+PvzNNB4hAcIY6qyNISFmp2UnQrAHUZnOV/qKe
	w14BzWQzXkWEejTmkN7S2JtDm8/+mSQkB/9G09xJbXgY7HnMrG6ZDWFsr+xZ63EZgRnl
	kQEBsO+pZD5VKT+fwFEkq712mExp40YRMdDy4B/yW/FiYHxvLq6oRFAUkGeTFuao+4FL
	fKVhqBwHrHwXfCqWCnwXAfV0kF/4DGllgIOCS8o53Rji49VHvxmXi38fO+MevKhWaMnP
	/jGDYp+pPGQXZ4t7rcgaAtc+WLKIE47nQW9E8VEtiBTdm3MwLAxP8I2dULEIF7zRx7Ey
	Vtgg==
X-Gm-Message-State: AOAM532YGtlStjbQpj4sSLFR7sJqHJ3+PVOR2YjRRSb6O/e5SbsSpQo/
	AYE/XQX5CAB/a4IGPmbA7nQa5qMzamRDd40U
X-Google-Smtp-Source: ABdhPJzrPJoSKkQcs7D3/O+jxWGcQnm7hAtaT3pZpl0hADMEEhp85iKpZ396bhcAkWniDhwqyZ5fqA==
X-Received: by 2002:ac8:5f0c:: with SMTP id x12mr1861347qta.3.1637031218576;
	Mon, 15 Nov 2021 18:53:38 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::11])
	by smtp.gmail.com with ESMTPSA id
	g123sm7734470qkf.108.2021.11.15.18.53.37 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 15 Nov 2021 18:53:37 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: any good accessible OCR for linux?
Message-ID: <41060758-1e8a-076a-88d4-873d65369532@gmail.com>
Date: Mon, 15 Nov 2021 21:53:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

T2theSBmcmllbmRzLAoKYWZ0ZXIgdGhyZWUgd2Vla3Mgb2YgdXNpbmcgU2xpbnQsIEkgYW0gbm93
IGZpbmRpbmcgbXlzZWxmIHVzaW5nIGxpbnV4IAptb3JlIGFuZCBtb3JlLsKgIEkgcHJhY3RpY2Fs
bHkgY29uZmlndXJlZCBhbGwgb2YgbXkgZW1haWwgYm94ZXMgdG8gd29yayAKb24gbGludXguIEkg
YWxzbyBhZGRlZCBteSBkcm9wYm94IHRvIGxpbnV4IGFuZCBzZXR1cCBteSB3aGF0c2FwcCB3ZWIu
CgpOb3cgSSBuZWVkIGEgZ29vZCBhY2Nlc3NpYmxlIG9jciBwYWNrYWdlLCBwcmVmZXJhYmx5IG11
bHRpLWxpbmd1YWwgd2hpY2ggCmNhbiBkbyBBcmFiaWMsIEhlYnJldyBhbmQgRnJlbmNoIGJlc2lk
ZXMgRW5nbGlzaC4gQW0gSSBiZWluZyB0b28gCmRlbWFuZGluZz8gRG9lcyBzdWNoIGEgTGxpbnV4
IHBhY2thZ2UgZXhpc3Q/CgpJIGhhdmUgYSB0ZW4geWVhcnMgb2xkIEVwc29uIHNjYW5uZXIgd2hp
Y2ggSSByZWFsbHkgbGlrZS4gVW5mb3J0dW5hdGVseSwgCndpbmRvd3MgdGVuIG5vIGxvbmdlciBz
dXBwb3J0cyB0aGlzIHNjYW5uZXIuIEkgaG9wZSBpdCB3b3VsZCBydW4gZmluZSAKd2l0aCBMaW51
eC7CoCBJIGNvdWxkIG5vdCB0cnkgaXQgYmVjYXVzZSBJIGhhdmUgbm8gT0NSIHBhY2thZ2UgcnVu
bmluZyBvbiAKbXkgTGludXggRGVza3RvcC4KCklmIHlvdSBndXlzIGhhdmUgYW55IHN1Z2dlc3Rp
b25zLCBwbGVhc2UgaGVscC4KCgpDaGVlcnMsCgpJYnJhaGltCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0

