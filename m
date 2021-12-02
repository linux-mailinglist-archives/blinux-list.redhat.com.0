Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E587466D8A
	for <lists+blinux-list@lfdr.de>; Fri,  3 Dec 2021 00:16:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638486994;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=igDQ/npjhj1kvTNNPkF8EC/M9Mu/06Tn3yivv7FUmKU=;
	b=WZFYatTtQOt9NgqKTayGmRIDPCXpN6p9NIHOq/TaqiYLyErmrCmapYcqISKOg4xbDbAzPh
	3fWSZifGBjEsW6o9FEVRXHAnYVqtVPjIYx+bb3XdmHNBNvMu4jJ6vswbv2B/k+bypRD+5l
	EDsbstiTpdNlz8za+lcQ2VE0iK+Ee6U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-583-9X7d0_npMhWxEqlXD84qjQ-1; Thu, 02 Dec 2021 18:16:31 -0500
X-MC-Unique: 9X7d0_npMhWxEqlXD84qjQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3565B8042E2;
	Thu,  2 Dec 2021 23:16:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A28D65F4EF;
	Thu,  2 Dec 2021 23:16:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 29D7C4BB7C;
	Thu,  2 Dec 2021 23:16:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B2NGKd4018168 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Dec 2021 18:16:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EB71B40CFD10; Thu,  2 Dec 2021 23:16:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E619D40CFD0C
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 23:16:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CCAA3106655A
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 23:16:19 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-567-BXh-0cozOCW0a6Wcu9TxuA-1; Thu, 02 Dec 2021 18:16:18 -0500
X-MC-Unique: BXh-0cozOCW0a6Wcu9TxuA-1
Received: by mail-qt1-f180.google.com with SMTP id a2so1455491qtx.11
	for <blinux-list@redhat.com>; Thu, 02 Dec 2021 15:16:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=Rljirfumpep3LEYHi3rPd7jMTslbu0E/58QVRLAFXew=;
	b=gInTm8KsVKl+UWD88kgSoCt44bIlDK3O+lrePPyWKdiQVwWVP38BZ1gpaazTc4aMvW
	/w6Of6bEVo4zxresYMH/RdbinVs5diqRNzGXoozi8FxNio4eveo8ATbDZ/ePz6buhAp1
	tZBbxTE2zsfnmpwwUhON2TW+fAREb5uc4RjXtscBk2AJetKTAcQNLe9XKXiqiK/klSMJ
	y3VfEoPH/ufat0BaC2v9M20U0p+Lwxj5fQIDssSBpOPhR+SzZsu3iDlJj6N0bdkwkItH
	9FhpLvyd+9t01a59pFBUGCBcbIu0UXUx4YBho5TJL9PsiP7cgdLjhjHdXnEcV8hpPfaA
	T0cA==
X-Gm-Message-State: AOAM530SdLUjDx6Episv6Hv/Ut+S0BFxGFRJLimlqJnjji8uHs0Gl3/q
	m5qfYlcevBbBEQN1NUvL4hNmM7Yfvyzb1jz9
X-Google-Smtp-Source: ABdhPJxMnuUMJsiq73iEd3oDOnmyip0ELLB88DX8Z7h7GSUUzWH0vWOuo5QgpFt8dBeSH3xxtktpWQ==
X-Received: by 2002:a05:622a:1902:: with SMTP id
	w2mr17229044qtc.93.1638486977312; 
	Thu, 02 Dec 2021 15:16:17 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330:6a07:15ff:fe1b:961c])
	by smtp.gmail.com with ESMTPSA id c1sm910833qte.79.2021.12.02.15.16.16
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 02 Dec 2021 15:16:16 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: two questions for the experts
Message-ID: <1e931725-0939-4d63-41c9-00e509d0b25c@gmail.com>
Date: Thu, 2 Dec 2021 18:16:15 -0500
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Friends,

I have two questions. I hope some of you who are well versed with Linux 
and orca can help.

First, Is it possible to make a keyboard shortcut to switch between 
Screen reader profiles? I made a profile with the Arabic voice to read 
Arabic Material, and another profile for English. I had to do that 
because Voxin does not support automatic language switching, or at least 
not yet.

I know how to switch profiles by going to the orca settings, but it will 
be great if there is a shortcut to switch profiles on the fly.

My second question is: how can I change the speed rate of orca? The 
Arabic voice I use reads slowly for my liking. Is there a way of 
adjusting the speed? I looked at the sixty shortcuts of Orca but I saw 
nothing that may answer any of my two questions.

Cheers,

Ibrahim

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

