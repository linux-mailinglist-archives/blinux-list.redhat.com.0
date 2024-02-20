Return-Path: <blinux-list+bncBDYPVTOXSQEBBM7B2KXAMGQEQDLHXMA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D3F85BDFE
	for <lists+blinux-list@lfdr.de>; Tue, 20 Feb 2024 15:01:25 +0100 (CET)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-59fdfc539aesf1924588eaf.0
        for <lists+blinux-list@lfdr.de>; Tue, 20 Feb 2024 06:01:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708437684; cv=pass;
        d=google.com; s=arc-20160816;
        b=egNtBYOI/rfV90lVzanDdlgTi1f6LkbTcwTVj0VZbNkMMXLrsbQrlAl1y3zaMWit7P
         v3LC56+PHI/H/kxC8zkJD0salxMaaeJM3fLxmPf5usm4/CR9nJPYM4KknB6FEUOHUEsd
         OVlc6lWTIKKqW4y/3tCm+7Er53sNijzLP9CK+GmMuFQ9+Yxf1X6sj7lCouVp1tPCyxmf
         UKHaJ/xJc90ciHV2xPHXi6GmQk+UBFzeH4Z43CG8STI/cK+xLe79vMR7rXXzM20tK4hX
         O/FqEbDs6d9hsgJzyQKqPpfCnfVEEcIZOPCTtdTbQbc8DY+wiFHvaoVdH8Qp6xAZt25V
         kEyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=pac/kqiVXv27E/xMA+RATALKwFC6d0qY88ap+0uQz2s=;
        fh=R9s0nmdZCACbPW7cz1VoeJapBZ2eHhS3zlgY72xdtvw=;
        b=ypSqhV6n/8YNnNJA9G60/Mv7EBaJLgeXZ8VkYudtqkcR1URenCs/VwO/P9GF8Ez3UP
         AyFStXOgVFNf3VuiE+FSpVmt0TbdcWYv5WT/Dt3ct2aRBTeC4jn/W9U7Y9SvZhEKeLZk
         WC9NibuWqYr09rrhr62LtM6eliOlEubAR9w6wnvIHYXX5KECI8wzqd2XGp3YGYQpSKhk
         fPEEm/bnvH5OJes+Ej31PatDYoRX8bB6yRuw97byz0b5ytXe2+Mc4OwIo0+ltLmzFJg5
         w4FMEvdE0NgkoPdZHXU8v51vx0akwvj7UPgnHFq9SNyROCoLx39RhM540rLnoG1poy7v
         uUNg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708437684; x=1709042484;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pac/kqiVXv27E/xMA+RATALKwFC6d0qY88ap+0uQz2s=;
        b=iwK63F2egshAzI4FdcZCq2jaNrujLTvZwa++eXSe/hvI1xl0TTUYk4NqHDyqAKKcJN
         g8AcZRWTzkQPY/Z/rzaFqKzuPO8grljNLY5d+i479nDcjzy68EtatjXiQVZ5VOF/fI+x
         T5Vry9In4z6viCdK44DO2OntIRi2fc6+faVxPOphhIbQRX8UDg2iI/3zBFO99ZyA/UJL
         3Y2zMxouuyzN/su0IzCu01fDht7sOArGoq+uadYg9NoeHm0vYuxya5FHhR6hGpVTRwre
         MyZ8nZFT2lUAc+bb1xQu196jfaEDcjZHKwozl7o+xQDD5bg6eXdGKeu4uNOC77XyjmI5
         Ri8Q==
X-Forwarded-Encrypted: i=2; AJvYcCURA/SkaSZk0ilT++UlMS875C8hf3qEotn+T3jquthlHZToBLpisdvzTuu21p9Vrb5/S+dkuS5uF0ijfD1VScMTPCtd9bmXSbbj
X-Gm-Message-State: AOJu0YxFNYL8bja6nlvTeCvjL3jWRNRxKjZ3g+JUa2zc3NWvlmWZbzn0
	uMLGUIn1P163dzPBXxVyAY3a7OfD/aMjWJjci1HfuFe+riRPaVoR5w5SieV3+Xo=
X-Google-Smtp-Source: AGHT+IHEpXYYploOAE1bdn3m4MAEdsgiSCFOF2lfkcGYRLwmjkZND3tPG6bkVcmWi5+qAbWZm2aCeQ==
X-Received: by 2002:a4a:ea33:0:b0:59f:fe70:3281 with SMTP id y19-20020a4aea33000000b0059ffe703281mr1679302ood.5.1708437683967;
        Tue, 20 Feb 2024 06:01:23 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:ab8b:0:b0:598:6f4a:c095 with SMTP id m11-20020a4aab8b000000b005986f4ac095ls4124549oon.1.-pod-prod-09-us;
 Tue, 20 Feb 2024 06:01:19 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV+A/IpOB0qbAWaBzG63WzLkJZq8wMNXrzeoSVI52MZbSFg5jyoV8f8DUYGCypqMOZBfltyXbWp2Krg/hQPQoDr1ogMqe5CO3/Qj6+e
X-Received: by 2002:a05:6808:3a0f:b0:3bf:d840:6c0b with SMTP id gr15-20020a0568083a0f00b003bfd8406c0bmr22601195oib.36.1708437679823;
        Tue, 20 Feb 2024 06:01:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708437679; cv=none;
        d=google.com; s=arc-20160816;
        b=fUeSGiElff5zP6MWpLoy9Xn1t1SG82FkqIYIrcozXkO3XESXF4tSLnPWNQmctpYiQZ
         q/89UYsElDB238WHok2f14yLZCRD2u5MkHsvDPoF8QgmCB+U0dFJT83oBWypSv7YllVX
         /W+Je3qrRce5qZqyRtk5bz633oYXYJe8y/hTK4eXtFXj4ZuUcqLeMhiKYakHvF59UF4Z
         1XUF8QL6tdNj6DYzjc/LGBKhKxSEyykjKsv+nkG+xUBpA6yzJKqCovAouR51R6x5JdpW
         DayygXkgACnncxdDd6LoGWk+RJiSAxd4+d47EsdVcHa/meb60BPXV+Fxe44q0dpktV2q
         4e4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=zLFn2jFhr2YA2HQrocmfuMOFDm4Me1LDcDKRs1NIq7g=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=UCauapymJJxOyu+ySuVS45SNNaICKqDIEZxWI3r6a6aT/ar0Nw4o5DMWeyM1QhDtg8
         1128W7YtgI3mnd0/u/qmkdrMqo6026bn7ajmfjZMclO+aqMCjZJliDGm9B/ie5va5ECC
         7mFEp7b/+qF6jfH37LeIODqsbAFJD1X9fvEnQOvwM/uDLE6LlugzAzHlaFpuRGhOlqz+
         ZQASQSwJT/XTMhSMNnhQeTUkAMAxV8OclTOtVXNWrlwBgiZ0/39TSZ1Ee2epgHgZuIPX
         K2nvaK/OHUVGFWBqfFwqO0WvPy3YgolQxITk8z06nAUITsljqyR/IeYzb8AB+aR8JHyl
         JyLw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id l1-20020a37f501000000b007871d3bfd7bsi8235504qkk.507.2024.02.20.06.01.19
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 06:01:19 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-299-dnUjrOhCN6WpGtUCMuemqA-1; Tue, 20 Feb 2024 09:01:17 -0500
X-MC-Unique: dnUjrOhCN6WpGtUCMuemqA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6C1C284F9F4
	for <blinux-list@gapps.redhat.com>; Tue, 20 Feb 2024 14:01:17 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 68DF1492BC6; Tue, 20 Feb 2024 14:01:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 312AE492BCA
	for <blinux-list@redhat.com>; Tue, 20 Feb 2024 14:01:16 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D512B85A58E
	for <blinux-list@redhat.com>; Tue, 20 Feb 2024 14:01:16 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-217-YLy3T40SMdK_4FtCgKpsVg-1; Tue,
 20 Feb 2024 09:01:14 -0500
X-MC-Unique: YLy3T40SMdK_4FtCgKpsVg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4TfLfd0fknz12xq
	for <blinux-list@redhat.com>; Tue, 20 Feb 2024 09:01:13 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4TfLfd0PWKzcbc; Tue, 20 Feb 2024 09:01:13 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4TfLfd0KrpzcbC
	for <blinux-list@redhat.com>; Tue, 20 Feb 2024 09:01:13 -0500 (EST)
Date: Tue, 20 Feb 2024 09:01:13 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: for those using spamassassin
Message-ID: <d72fa762-816f-30d2-74be-bfd0c60751a4@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

When it's time to put a
BLACKLIST-FROM in your .spamassassin/user_prefs file please remember:
BLACKLIST-FROM	*@anyshape.com
blocks all senders from that domain.
BLACKLIST-FROM	*@*.makemoneyfast.com
blocks everyone from that domain and anything after the at sign up to
.makemoneyfast.com also gets blocked.
Since squirrelmail and mailcube have inaccessible web interfaces for
screen reader users I'm using spamassassin to handle miscrients.


-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

