Return-Path: <blinux-list+bncBCRJ7NN7ZUGRBU7Y33FAMGQEAD5MHJI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 93764CEE8D6
	for <lists+blinux-list@lfdr.de>; Fri, 02 Jan 2026 13:38:45 +0100 (CET)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-890586c53e0sf390386d6.2
        for <lists+blinux-list@lfdr.de>; Fri, 02 Jan 2026 04:38:45 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1767357524; cv=pass;
        d=google.com; s=arc-20240605;
        b=Fx23C3xIoKPpHzsqT3/dKmQwg9F6DsaHEt/gfg8RjJQADX6DQrNY3e6eCwoB/MF2ui
         i6wSz6wYndw2YxJfatLSDL+ig18RDgM/LGEi/nDOZ2BDKr/7J1v5pS+STP0S9NVTG5xn
         ONpcjgx42+skB7X/A+hamueqTHX8RAt0FeX/pSgCVf75m4m2T4CGcI0nynz9JJNZrqrX
         ywTRdKDeh/evi7uN2UobriKdITn8yqaYUxs+Wflzn2wWFYvIxFs1hFzTjAcrInMbdT8R
         dCjFoNG1CGzvPwawQe9Qi9TuwsJml1dd8MVjVtrSO0usj89dnLrt65TpcvV4AgtQaCQR
         tVKw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:from:message-id:date:references
         :in-reply-to:subject:to:delivered-to:mime-version:dkim-signature;
        bh=cbwAY42UdWqLmfOJW/+DrxTJJbg0XkZijzLvINN6Vds=;
        fh=/b4D/ZaUHy3+96vFWXODWhRYZ5rdintIITBHIcokKfQ=;
        b=csegGlitM5ACLdLuYSE41K8XThBsp4/upcVZ5AlTbztWy7e0KetYzQY8ZPjuLy4ApP
         6tB5YJSjn+VFMAQO1Xp36n77SSW3p84ZGJn5yq+lKihVhKreLdsLtfd+j45WP0+AsLqA
         H41z6h11baR/niKMYPfLE1p3e9tpJ/DBwfHLHWT+oMSA+8tTR7MHMal0cryze9HjzQ6r
         FF7lvSg9HAU2p4FLDU5lmcueC87Fdxc0Tyo4hBo4lnwEyRnZyqbjW9tV6mHoEDRtd+B4
         EpEio/RFde24LqqX0vDMxyz62xQB1XXsSO2HE1XzLkmoL44EIgfpKZzOY3lin+gc87wc
         uTuw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=gWhmsN+S;
       arc=pass (i=1 spf=pass spfdomain=mailbox.org dkim=pass dkdomain=mailbox.org dmarc=pass fromdomain=mailbox.org);
       spf=pass (google.com: domain of locust@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=locust@mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767357524; x=1767962324; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:from:message-id:date:references:in-reply-to
         :subject:to:delivered-to:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cbwAY42UdWqLmfOJW/+DrxTJJbg0XkZijzLvINN6Vds=;
        b=jpLRdTH6VhwFlMVCIwn1dj9SY5qn4ezYggtmvUWPpTCJKuE3GgoYyBZunG33zUmGZ0
         9LBv7ZLNrtG9aydaGUMLaFJaDI4EDqVxUfcNXA6BU23YrinMLw4jG4a1UlmVcUnxJo2l
         qy3ZbNjDPQo96qvBRcjltjEZKmZ5/dVQgxEbx5kIZjcpyYcExPKy69+iC5SoRzKxfUzO
         WXXOo616agEwG9Im8IpThkTFYInfcXlavbQLYMtnr+niyNcDdKqxPe0BcW8woT9+lQzK
         Lvp0IGvdJd9XiZ5+fGoZwMVah5mVDWDsiETBiecfQAfgxn/aaV3ufwvwQibGzgjEf8fZ
         XwKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767357524; x=1767962324;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:from:message-id
         :date:references:in-reply-to:subject:to:delivered-to:x-beenthere
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cbwAY42UdWqLmfOJW/+DrxTJJbg0XkZijzLvINN6Vds=;
        b=rKC/D4Ffi54GXJMkLgERz7qsBRTdFCRNntVKKkArb2svzs0nAn3ihe8V4xyCpbwPAM
         0eF2JY7pj3KztbLuk/gGk5UmX2fhmJOcpC9rJtEOb2Nm0NE8wMXD58gIakOIxu3cbvhy
         QDp1jhyF1+9ruj8qX3U/a45ro7lVebwfufrCoGSu86K8iS4dsUguUD/soujnPfqGY3zw
         cPll5jxmVKTQtUlw3IpwASG+krpAXGQC9NuqEe0UUFFuNg1nSNqr3z7sWQllkbpte1oz
         OtYPcCBNxWhzJoQhPZLwYAVboacQ3/eR9CTJkEJKQo/HURvkkpnQq2pLQsOASJ2IwWq7
         8Ocw==
X-Forwarded-Encrypted: i=3; AJvYcCVo8Wah2GLJL8GS1YUTVFj4i6kqZKFjRu26+goRQ2bTckp9QDWCGhdxhljKbTPE3ZsPAgXAVg==@lfdr.de
X-Gm-Message-State: AOJu0YwYGqk+F4glCJwUFDHf14s121RPkOtlWkKVm2FHiKgkjkmraN8i
	zzPr+lKWjWkvL4mm6JvUbUs47sT2jCo8uXnk1bPfL5xK016uDybUnz2LtCQXJAPWWSA=
X-Google-Smtp-Source: AGHT+IHO0hLDY7kf9TN4L7aZqOe7hz0KR/mCjCdpMKksAiUMsqTaBEPJw730ovUnWzRVpMRyKKbYLQ==
X-Received: by 2002:a05:6214:5854:b0:88a:2ab1:1455 with SMTP id 6a1803df08f44-88d854e12e6mr488456736d6.61.1767357523829;
        Fri, 02 Jan 2026 04:38:43 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: blinux-list@redhat.com; h="AWVwgWZxoSeOBW449CalMu3peWFVSHECoDugmI0qBZInbsYReQ=="
Received: by 2002:ad4:5de6:0:b0:880:31e4:d7e4 with SMTP id 6a1803df08f44-890127586bfls108258966d6.1.-pod-prod-07-us;
 Fri, 02 Jan 2026 04:38:42 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCWjX4KNXhvSlA02OUIXtMiwRVxnFsGPCmQGmlJgzkBV9ui/BqnbLFf27w6+8zreUkwcHqAO4gbdH+8h/w==@gapps.redhat.com
X-Received: by 2002:ad4:4081:0:b0:88a:57db:8e04 with SMTP id 6a1803df08f44-88d82041599mr430851146d6.8.1767357522550;
        Fri, 02 Jan 2026 04:38:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1767357522; cv=pass;
        d=google.com; s=arc-20240605;
        b=M9vQkeh1IMROfjDwpDtSnjIHR5gWhXXmJ6sm+CwqsUFX24juGYBxuSOjpVt/R1M/3X
         R4MKhgg6DMeD48Ki/lkwZRJJ0q3U8rVKkDiuUKNq2PA8UvKmtMxfOOjHKPmi0OOBs9iv
         DCPNM0ZkUcCTGYPSDk7W+pwtT2GigxJQycj/hoTQre4DT5kRBFVbEOSs0s6YenVj6Be3
         JwFIT8L6D1LO9gGwYp813JX856fvxLBl9beKVsW0GxxJDbGQdu4+TE8jYslF4+FA6svD
         6n9r604wHNwnegQJl0WQUGwOgNY7xYTMuSa70ffRuD2cq7yu//RwJLOlOnuHbgDLzxue
         47Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=from:message-id:date:references:in-reply-to:subject:to
         :dkim-signature:delivered-to;
        bh=x43Ep0lzGj5wAUjf49J7vayAOtap6Jw95Ea77Qc2hGE=;
        fh=2vowJKpt/CK0x3+Qs2sG3OTLWbprDUrpq2j4uVc/pVM=;
        b=TkIOYUZYqlRAEWsfgg6I5NquY/xXjBcoVh5dXs6IVwP53peibGyHlU5t4DzeS6DDm2
         MMGxZ866SSHcMxO3wLvmjWgFRcgTmW7w6iOhIZTUKNn9fNMSdPkaHB9k5uTo6CEoB0MC
         TD4Vxx42L2ZJdmf5BctoZrYfcfbVfQGjC12K6o1BkV773DoWTS4CdZVrGNhrlqrhvfMr
         0ETV6tRJc3wwPMu1jIlkRE+dfTiHL/iZwrsMUbz6XBLtSbsaALlzPkWwIuOd151QfTkP
         TJi0xDzxUq2ODFW54a5Ucz3E1lnUarWuab6lCZdwEXaEHFW5kx35eESq6jXlrqkA06Sq
         YR9Q==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=gWhmsN+S;
       arc=pass (i=1 spf=pass spfdomain=mailbox.org dkim=pass dkdomain=mailbox.org dmarc=pass fromdomain=mailbox.org);
       spf=pass (google.com: domain of locust@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=locust@mailbox.org
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-89001b6019bsi254143436d6.157.2026.01.02.04.38.42
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 04:38:42 -0800 (PST)
Received-SPF: pass (google.com: domain of locust@mailbox.org designates 80.241.56.152 as permitted sender) client-ip=80.241.56.152;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-479-Gnen9EPiP7qv4y07aZErYQ-1; Fri,
 02 Jan 2026 07:38:40 -0500
X-MC-Unique: Gnen9EPiP7qv4y07aZErYQ-1
X-Mimecast-MFC-AGG-ID: Gnen9EPiP7qv4y07aZErYQ_1767357519
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 605C21800378
	for <blinux-list@gapps.redhat.com>; Fri,  2 Jan 2026 12:38:39 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 45B1D1956048; Fri,  2 Jan 2026 12:38:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 42F1D19560AB
	for <blinux-list@redhat.com>; Fri,  2 Jan 2026 12:38:39 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C936F1956054
	for <blinux-list@redhat.com>; Fri,  2 Jan 2026 12:38:38 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1767357518;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:content-type:content-type:in-reply-to:in-reply-to:
	 references:references:dkim-signature;
	bh=x43Ep0lzGj5wAUjf49J7vayAOtap6Jw95Ea77Qc2hGE=;
	b=Ir/5ew+nyEtlrq7qu86KGmdIiYNW5NcaI+PnAmx3VGx7Qum2ylSDGPk1t7BH+RXNNptgVl
	16EYtk7ZexPafd5BbcwMbbvbvjITUCwMTLARLRdmjI7GmnKpoFRrtNoM6KI8TG1Z68SE7P
	tN7PpNSBr5Hfu5At50Gf/2xShpXxEsJ1sSWCS7Bew3Lcasw9D9C//3cKDvWMgT9NlvdiE/
	DFVpuH5dIBPZfsS41N4drynfUYS2i3pA4wtUJMdy5u9rxvKZA6eSwOs3eNDEOCaiMWOeu1
	xwn+une2pUzXwoMkhEXprsIKxwpTn+O3VY3u/Oe30jI4Tqu6ehiqwhZhmrkKPQ==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1767357518; a=rsa-sha256;
	cv=none;
	b=Abyr3c7owyQbMESlqteIhRfy4ZBx1NbGIQfsI0Hs5/PPe2w1CNssJvNEfZpm21kjk0OoY6
	cklpWoDHoCWfFG49UQJz6vscBJCQhOD40ut3KdOQus20j49tNhmUuRX3K5Q+JK0wQb0e9k
	GtCJ5ceIAeUCpi5RxxYtgNpWtY5+nqvjYjHsd4SA/u8NZZbDSo/bwZRxZhYiziJQQjBnlm
	jXaE9JaDj1W21wg/a4G18H+2GCaKu04ysgT+ePDXEId+GnM0YylVqPuaRyB4ixxcEe9ZBU
	ZTf83YZGNRgQWMNuziMUOKOPopAmBrQG4SzO1eAtnnhx+b5AaVlOJIYPWtbDCQ==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=gWhmsN+S;
	dmarc=pass (policy=reject) header.from=mailbox.org;
	spf=pass (relay.mimecast.com: domain of locust@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=locust@mailbox.org
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org
 [80.241.56.152]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-651-WUea7_qyPkWFVAAoQQwbZg-1; Fri, 02 Jan 2026 07:38:36 -0500
X-MC-Unique: WUea7_qyPkWFVAAoQQwbZg-1
X-Mimecast-MFC-AGG-ID: WUea7_qyPkWFVAAoQQwbZg_1767357515
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4djNPc0bt5z9vNN;
	Fri,  2 Jan 2026 13:32:36 +0100 (CET)
To: "rodney jackson" <jackson.rodney.1970@gmail.com>,"Linux for blind general discussion" <blinux-list@redhat.com>
Subject: Re: vojtux_43
In-Reply-To: Your message of Thu, 1 Jan 2026 13:40:44 -0600
	<495c0d47-4455-4c74-a1f8-1648f290048a@gmail.com>
References: <fb6ed94a-668d-47ac-a86d-190ece52d55f@protonmail.com>
 <6de1a01b-3d7d-454e-a633-1e4044fc9801@gmail.com>
 <6fddcc0e-caec-42cb-b602-8df63068ae0b@gmx.it> <495c0d47-4455-4c74-a1f8-1648f290048a@gmail.com>
Date: Fri,  2 Jan 2026 13:32:33 +0100
Message-Id: <E1vbeKX-000sRo-2r@lapcust>
From: "'Artur Rutkowski' via blinux-list@redhat.com" <blinux-list@redhat.com>
X-MBO-RS-ID: dc2bf93a2472d8431bd
X-MBO-RS-META: cpruwk9besaw6npm5mnbouaxehqi46de
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: mpwEBYj45b0u6c05l0I1o9tF8Y6HZK1uRR4upCafv4k_1767357515
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
content-type: text/plain; charset="UTF-8"; x-default=true
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Original-Sender: locust@mailbox.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=gWhmsN+S;       arc=pass
 (i=1 spf=pass spfdomain=mailbox.org dkim=pass dkdomain=mailbox.org dmarc=pass
 fromdomain=mailbox.org);       spf=pass (google.com: domain of
 locust@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=locust@mailbox.org
X-Original-From: Artur Rutkowski <locust@mailbox.org>
Reply-To: Artur Rutkowski <locust@mailbox.org>
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

Hi Rodney,

Do you have problem with volume in general or it is Orca-oriented subject? I ask it because I control volume by amixer only. I never touch the Orca's volume itself and I don't even know if there is any dedicated setting.

Greetings.
Artur Rutkowski

https://www.youtube.com/@Art-ur-g2o

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

