Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC104AAD70
	for <lists+blinux-list@lfdr.de>; Sun,  6 Feb 2022 03:01:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644112892;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=k9UnzCG9xQdjTtogkIWVtCLNO0SVUYNTkobgCiFWCos=;
	b=a046yA1FRrJrov1GdVWbJWPv5zq2hSNNqTAc15ekla4fEXdm/L264Wv58dx/XwDAdZw/IC
	2znI+eM0HKae2B7QeTaKKczdK6a2sAn3jSdy30V4QBgdJdaE0p+h7O6t9znABjC9196vIj
	HkZUqRwo5K9pQeeyxEGDdAqrv6kirtg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-537-2ps7d3UlNwOMnDpqfPBG2Q-1; Sat, 05 Feb 2022 21:01:24 -0500
X-MC-Unique: 2ps7d3UlNwOMnDpqfPBG2Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 42A578030B7;
	Sun,  6 Feb 2022 02:01:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5BA2012E2D;
	Sun,  6 Feb 2022 02:01:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2C2EE4CA93;
	Sun,  6 Feb 2022 02:01:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21620tac027355 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 5 Feb 2022 21:00:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CB0F0C1914B; Sun,  6 Feb 2022 02:00:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7252C07F5D
	for <blinux-list@redhat.com>; Sun,  6 Feb 2022 02:00:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AD43E811E76
	for <blinux-list@redhat.com>; Sun,  6 Feb 2022 02:00:55 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-25-FNSA95iVPFy6MCHoSaxE3g-1; Sat, 05 Feb 2022 21:00:54 -0500
X-MC-Unique: FNSA95iVPFy6MCHoSaxE3g-1
Received: by mail-qt1-f176.google.com with SMTP id p14so9238890qtx.0
	for <blinux-list@redhat.com>; Sat, 05 Feb 2022 18:00:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=nbTeR0vehkLfh1jMUhpsC/KRjWMimEH7OigNpXzgzJ8=;
	b=6Z6oUG/zdiYTz6wc746zoLkeWCiRklzdvfE84fvfGvLGpdlcAvF72MCHDsYqaDhJ69
	TN/taIPCze6Afi4/71uTrQl16E6cU7dFdN2Hq/5mGi/Fckps4KExVnhkFyVDiGi8CXg4
	9NX6AaRdBiuEKpkOFfMba5C7DicokxNhGCUnAPhJoOSKHVSDVxuQvGhwdC2VhSqh/+H3
	JBmWBWskDmA+pMEliuP0WDclYbNG6UbfBmbJ1TVpK74Gx9jonf7EkJt+VkpIEQxIFOyb
	zGNzp2YXQUlTJ/hfk0xoBf1Wf2SU2ao2FmXcvfxXJvfD41loJK0QiyxkZ7FIDjOW8dWo
	KzSA==
X-Gm-Message-State: AOAM532W31mSfJCLmPuxRaemIWXEUxuXlTiGXArntyFFFnDg811FaaMp
	iuKdatyNhSgP41tho1aBSQlNr5tHDapcwQ==
X-Google-Smtp-Source: ABdhPJxzQYguKT8Y5SR6zLQheFemiymYY7119ofu1zTJyY3XMxAkVlFtDAVvBCH0rnlXbCuyYGPuGA==
X-Received: by 2002:a05:622a:1356:: with SMTP id
	w22mr4022341qtk.100.1644112853399; 
	Sat, 05 Feb 2022 18:00:53 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420:8865:c6c8:c044:379?
	([2601:192:4c80:1420:8865:c6c8:c044:379])
	by smtp.gmail.com with ESMTPSA id
	j196sm3207437qke.134.2022.02.05.18.00.52 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 05 Feb 2022 18:00:53 -0800 (PST)
Message-ID: <9806e258-e16a-8d36-6e2f-463b9b9613f6@gmail.com>
Date: Sat, 5 Feb 2022 21:00:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
To: blinux-list@redhat.com
Subject: Firefox inaccessible in Ubuntu-GNOME 22.04
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VG8gcmVwcm9kdWNlOsKgIHJ1biB0aGUgc3ViamVjdCBvcGVyYXRpbmcgc3lzdGVtIGFzIGEgbGl2
ZSBzeXN0ZW0gb3IgCmluc3RhbGxlZC7CoCBPdGhlciBhcHBzIChnZWRpdCwgdGh1bmRlcmJpcmQs
IHRlcm1pbmFscywgZXRjKSBoYXZkIApzcGVlY2guwqAgTmV4dCwgbGF1bmNoIGZpcmVmb3g7CgpT
cGVlY2ggc3RvcHMgd2hlbiB0aGUgZmlyZWZveCB3aW5kb3cgaGFzIGZvY3VzOyBub3RlOiBvdGhl
ciBhcHBzIHN0aWxsIAp0YWxrLsKgIEkgaGF2ZW4ndCB5ZXQgdHJpZWQgdGhpcyBpbiB1YnVudHUt
bWF0ZSAyMi4wNC4KCgpCZXN0IFJlZ2FyZHMsCgoKRGF2ZcKgIEguCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

