Return-Path: <blinux-list+bncBDYIZZNASAHRBYOSQHFQMGQEUPWS5DI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3BDD06DD1
	for <lists+blinux-list@lfdr.de>; Fri, 09 Jan 2026 03:35:15 +0100 (CET)
Received: by mail-qt1-x846.google.com with SMTP id d75a77b69052e-4f4a92bf359sf107204661cf.2
        for <lists+blinux-list@lfdr.de>; Thu, 08 Jan 2026 18:35:15 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1767926114; cv=pass;
        d=google.com; s=arc-20240605;
        b=g4c/hQ4sdhcdeBlSP9qhpHmJaV7tcYW554msZngKc0JEjijlwD5qePsURT5SFtDbBU
         p7wKrKAtnJBwO86xFODLSUHHcvt5khFrVwmnytXvzHx1rV+z/diUxhXpqPVCFvOMcf38
         XSikNg7JULQpviZHmHx+9ZtIQtPU7VlHWRenrJ0SseFan44QnxaxP7dRwFXoYDoHxsPi
         ybWmcJQp3Q4uWA3UK1fDi/m8ivmF/MdOoT+gv97hctF2s0xS3YqV8YvHZq71m5p0MUlM
         77NnqlOi2zGkRG29I4wG7zvX2Y4MvQn/1ooV4fv4R2YaoOqzAB+ZIbr8zrw/JmsMuXWw
         5w3g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:sender:dkim-signature;
        bh=P9lCqwA7gnK2GBaAyAzroAsh6vTcwFaW50v8CykHcg4=;
        fh=lz09tUcKB9xx+jDRsCZ3MkzWhlT5v5bM9quLxTUvuK8=;
        b=bP6DrP3U7F4V+5iYn9sK9mr1ihtQAK8lIRWQ+9Y7PLya65qTsuGnZzPvzJY7z2poPx
         yh8v8Lg5OA9QHVuFDWsZhQ1zQFsnJLtDzMfRAZvM9+i03HiVl3ShJGW3POF5HoyuXeW5
         ApLck8xv3PmSJx+IILpiTG9mZo9pCS5/RpI/BDAFDBDETINdJ09AJRNjXxF0MStbMWag
         GGBD4YqF/7OjO/UBheMAMc9szEghClV0xcwm/a7NtReo6aX6Su/2J8Ul+mbPWdM+/5vp
         N5BQBHkqlSLnNgmPqjCbyd9QcdfZJYZDnPGy0u7T0MvEUx+FTUlzL/Fr30ltljVKGDm+
         omXw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=bm9kuoE6;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.222.178 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767926114; x=1768530914; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P9lCqwA7gnK2GBaAyAzroAsh6vTcwFaW50v8CykHcg4=;
        b=nRHl8Eke8I0yawXfGIcMJUhRu29AxP43QOfn/3eEOLEbUZzlUdJC9FPOe5PUgDcfgt
         OtbsNEgxk8LmuXTD46/smvJVwgCBB3kMLqKGq9br+pwcVImPNKXdmhXYyyUzjxBBZcqy
         C6oNLnKsDPiNb5OgqrSk7LDTcQJbNOW71SWshV/UGDjESRYFImpAe/HBTGO6jErZL4TC
         Ow1aN9gFlg6zbdp+PJO9u2pcXr2LP3G1lq+IpG49z0/ZIZm1ur3aK6ipomkLwn9OvSGe
         IL8O4NfIEhzwHbu+DYok24DlOfdmUUC92cC5Il2sBOYwUcOvKrR3WJYKCle6XyuoScCG
         JvjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767926114; x=1768530914;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:delivered-to:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P9lCqwA7gnK2GBaAyAzroAsh6vTcwFaW50v8CykHcg4=;
        b=SmI2rxVikfYqAJzFPEEZ1OFfsqvSGa0yRGDcQcXRo6v1HOi/3XfJ89IvJBzI9CSAd9
         fwE1BO4An6tEB3siK5eQAtxQbGq2rsgW1X7uVKbyGwN0IT1jt8HRTf9HFUkyzlgi+b0w
         /j0zxdmvXzU2B8woiLewD8uUFA6/AVgl1awRU0IFt18XYVBY+UCT8U1CcEP+gwVAssDY
         gBE/X6NIzFrsBYhsaIMWVVypQGWvPgnpeaYtL9IWXq722YknkoEF/kSMIv6Dj7R1IUuo
         ASmGxtNjD9GU/MSGxH/KGSM4mFn1lwudi1HLVkh49Uv3CM2dttkypc4XROczpRuOdgpD
         nlEQ==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=3; AJvYcCWtvF98FFqi/H8+TfPsvS/8BYRjo1ygyNLS4LKB0Uy5gNKOLzfN55rpiH2uhWDzmcR5TmwUbQ==@lfdr.de
X-Gm-Message-State: AOJu0YxufpK8XXX3YG466CHJTqwjvdrSkGU/MNVCYyC1kB0kuXgUYSDH
	M+i1UUgc2/SDIk1fEiu3LWw39Y+DL5VLVE183hMysOrnvTdaDQxc0C9tDWrCnrNcLsA=
X-Google-Smtp-Source: AGHT+IGdKgBgeVwqFoL0qtZczHcAG7p5M+S1qNeB7Tty50XLs61UqM2eOOqEW8bQWJ5JXfXhDt9mdQ==
X-Received: by 2002:a05:622a:2614:b0:4f1:caed:da6b with SMTP id d75a77b69052e-4ffb48f06c1mr115234831cf.35.1767926114207;
        Thu, 08 Jan 2026 18:35:14 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AWVwgWYUvJ+V2hZ5xQvZcTcVx18PptuIMI3El0W+5z5TETNOJw=="
Received: by 2002:a05:622a:4cf:b0:4ed:7bbf:d13 with SMTP id
 d75a77b69052e-4ffa70c352dls67617121cf.0.-pod-prod-07-us; Thu, 08 Jan 2026
 18:35:12 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCUf8TKFpksqnaifoB19cmqTFv3cpXqFg4f4ocBtgWPrNkl/fFcqEHIiv3d0a4AaBedaarK3+ZvuZ59CaA==@gapps.redhat.com
X-Received: by 2002:a05:622a:4cb:b0:4f3:5367:2f67 with SMTP id d75a77b69052e-4ffb45e42e9mr105619221cf.0.1767926112764;
        Thu, 08 Jan 2026 18:35:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1767926112; cv=pass;
        d=google.com; s=arc-20240605;
        b=Pf+bWsAG1qKwK4rtcd8ZN37cJqnja7vvwy8fwhodfESwJOLzHXbNJb+6fNTybw+FhQ
         8wJvEBvaNAFJjai4LTSwVZ4QW9tJTLcrCjoHB/Ad2kYWcnW1tDgrOgUiMyIBC5w+EInS
         sSaiKjqqlXMdA2FFZ5K+MkuMk+CsoQB/58IIqdY4tt3pHrewr1xPT1/VpSyKX48AhW62
         1sEHIeZaLVE1SD8pNXEwCnUUZd1t3xVNXC05xR8MOCjSCzbTyvnbVeBxfHKQWJSezF9e
         FyqjU71gNxF4xyCtjeXkiESIeZ0lrSklTJz7r0ydtP/DhspernLyqLCe1Inp5GYtu6gv
         hksQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:delivered-to;
        bh=oYoruLIsPIOCd9JKxnAQ3L7pKSliRBVpKktcBMZYMGE=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=hI4amz2Y/UTx+4L8STdAKsQpXNjjE9fpzdUSOixQdKdgn1bGFoY8TsPFSLl9x1GJWI
         9YTiakBjUO5tV/9DovxFVCjRD0qqxYbLBOaS+mUEZa1+cRgZHEgNjsztO+26mfbU2mis
         j8OqW/UsYYiRRLEWuMfHHuui3Xi0kDxmYSOQpr1fqhkTQdCaO/g0rlDHuWMqRtzFvWgr
         P7+RwMhV1av6GMuJi0MQfPVklgy/NGF+iVRIs8RaTiWAST2/NCSHbh18hBfT/LTUMCk+
         ELU2fV1pjqrTUn0/9NY+XEMvwK7Zags9/fH74ASB6C44R0TpVXcZAxzNqXEENVNLauwa
         kbog==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=bm9kuoE6;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.222.178 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4ffa8e74601si99824771cf.214.2026.01.08.18.35.12
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 18:35:12 -0800 (PST)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.222.178 as permitted sender) client-ip=209.85.222.178;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-641-lIGKdX3RM7CKxgEY32w_bQ-1; Thu,
 08 Jan 2026 21:35:11 -0500
X-MC-Unique: lIGKdX3RM7CKxgEY32w_bQ-1
X-Mimecast-MFC-AGG-ID: lIGKdX3RM7CKxgEY32w_bQ_1767926110
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 94C6219560B7
	for <blinux-list@gapps.redhat.com>; Fri,  9 Jan 2026 02:35:10 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 783941800980; Fri,  9 Jan 2026 02:35:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7564618007D2
	for <blinux-list@redhat.com>; Fri,  9 Jan 2026 02:35:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F188919560A3
	for <blinux-list@redhat.com>; Fri,  9 Jan 2026 02:35:09 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1767926109;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=oYoruLIsPIOCd9JKxnAQ3L7pKSliRBVpKktcBMZYMGE=;
	b=dWPsxF1vZU4L+kZU+KCwZxCCXz+YQVXkURCCzsHETDmLmEKAOzyWEpbKFI38wgYAPuC1Tn
	Qf6b5XjKydJuhtJnlVyUfS0K1ieqMYP2KO8XjGcVzjauIbIKSyETHpfKMQ/AdxqWy0M6iK
	P4b2hmNyTioaDOQhmh8gnNhgMvol2ceW7Hlc9es38DbzPxpXZapz585Z0jy85yvNMmrrsl
	oeQhYXT1bLI+O5Ee1bytg3BOV/rASkpq3sNNZYaZc+1dK21s93pSShRnLxQfCjWG51PTxb
	dQIpv4oHtNGuxqj21E3PcOm9rDpMBGnwzXtXAlEqJzZZOhhJ2M+a0o6j1mrL2Q==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1767926109; a=rsa-sha256;
	cv=none;
	b=ity7M1zYDh9PMDcniylaYVIuGBTJhkbrOdx/dgP22h+56cEu0YMaya98smRce3/34HRM5e
	worRZk1kXrfCTdDzBO1yD/P+oK6DQLVIYAOD63A2jDvL1+g3Z0irKJyBTv2rhrFvHnquWn
	STeFi4Kk3/OGWnZ9n4Sw6vlcSL3aWCk4GduZl2s8uVakkRceRqgYYmmdQanFxRQuwkIkxp
	1u6GeU1ENA4f70PoBAe79ybHKjH2KFUvpe8SoQZ/kg1BfW6JypewzoluRg06Hl/NxYtdbr
	kKgQRJdqS2rYcexfkPXs67XFHI0dLYbU+7Cs71JJdZ7DASxMigy1Wp5VHOYLMQ==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=bm9kuoE6;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of jackson.rodney.1970@gmail.com designates 209.85.222.178 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-300-4xhb4kavNk2-roJjVzn-iQ-1; Thu, 08 Jan 2026 21:35:07 -0500
X-MC-Unique: 4xhb4kavNk2-roJjVzn-iQ-1
X-Mimecast-MFC-AGG-ID: 4xhb4kavNk2-roJjVzn-iQ_1767926107
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-8c0d16bb24dso345636885a.0
        for <blinux-list@redhat.com>; Thu, 08 Jan 2026 18:35:07 -0800 (PST)
X-Gm-Gg: AY/fxX7FYo3/04ukwZ0mwIN8UiBV8OpzhX3pPlLtQ1sU2FNHkymqAdx/hwXQULwbOoy
	VRO9Ncy3qRGPCWjcW0Wi1sR4EJZheqT9Y8nlfjriQxNYi42FoFCs6KW+R6McbXbJzhpLgcq45bb
	WrGCD3pfNZnrWtxv53XWjMoUr+1CWZsCyc/ELQmDT2pe614eIvwMTFhSCtRCW73DR/K1xAEnRXC
	qkPyHiaUfzbTKq6xf0aH+byiAAvMvH91SzoNb3ti2loyX6bAQThgincuZ6Bof4C+s4OgU0oFob1
	vfxhIdJGsr+gB6h851+FAxnITc6zmTSRLwhP8Syuq4YmQlByLNKB6pYWLfHHZsT785XA+j+HkH+
	dut+PdwpekofjWcHEkxt56z7AS48BIn2HQMPK8WbmrjBjIT35LXTpUeFVur7V6kE478MAlwIVM6
	htFcnTC6UOlfXIoooo8WqO26IsB089dMPnGd9AN/Fl7bN+3ZGZZxzvpLjCEJuXrelh7t+vqldAa
	CGAB4GYZO/Uk72s
X-Received: by 2002:a05:620a:c53:b0:8b2:6a35:9635 with SMTP id af79cd13be357-8c38936898fmr1064374685a.6.1767926106787;
        Thu, 08 Jan 2026 18:35:06 -0800 (PST)
Received: from [192.168.4.30] (63-142-94-63-142-94-164.cpe.sparklight.net. [63.142.94.164])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f4a6145sm716748285a.5.2026.01.08.18.35.05
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 18:35:06 -0800 (PST)
Message-ID: <712f65af-a637-4820-b0e1-9a73072a67fa@gmail.com>
Date: Thu, 8 Jan 2026 20:35:04 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: jenux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <ec97e372-1d5d-4e1b-a581-d62b4ddebabe@gmail.com>
 <80157d3e-02aa-405f-91db-4227370b368f@gmx.it>
 <e3996fda-7734-4868-b4c7-742c4df6ef5a@gmail.com>
 <2679cc7a-4e36-4018-864d-26a1a87a2fda@gmx.it>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <2679cc7a-4e36-4018-864d-26a1a87a2fda@gmx.it>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: _c2jJnaqVxylCbJ35Qbgbf6OWHHjEpeUypy3WytiOa8_1767926107
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=bm9kuoE6;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 jackson.rodney.1970@gmail.com designates 209.85.222.178 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

Kyle,

i got Jenux downloaded and installed.

so all is good now.

Rodney


On 1/8/2026 15:02, 'Kyle' via blinux-list@redhat.com wrote:
> I have deleted and forgotten your original post. Are you trying to 
> install on a Raspberry Pi? If so, then you have the right iso. If not, 
> i.e. if you want to install to an AMD or Intel PC, you need 
> Jenux-2025.12.18-x86_64.iso. I'm not fully sure how or if it works 
> correctly, but Jenux-2025.12.18-tripple.iso is as far as I know 
> supposed to work on everything, even very old 32-bit AMD and Intel 
> PC's. I need to try that myself, as I still have a couple of laptops 
> that are old enough to need either this triple version or the i686 
> iso. I do hope this version is still maintained, as most other distros 
> have stopped supporting the 32-bit x86 architecture.
>
> ~Kyle
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

