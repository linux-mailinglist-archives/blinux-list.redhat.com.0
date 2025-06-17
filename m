Return-Path: <blinux-list+bncBCFJ3VNT5EIBBR4NYPBAMGQEZB6MPTI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 71570ADBE97
	for <lists+blinux-list@lfdr.de>; Tue, 17 Jun 2025 03:37:13 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a442d07c5fsf114874671cf.3
        for <lists+blinux-list@lfdr.de>; Mon, 16 Jun 2025 18:37:13 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1750124232; cv=pass;
        d=google.com; s=arc-20240605;
        b=aY1EqsigLbeqUp1mv5jblPQXm5T9cPiqGxsMUoQjc4D7oB/gwqkrwOKhIpAEWwwd67
         6HRaFgmgxSjh3ZMDfinPuaigtuALWYdQUVsT4mLB50vX2if2TFiuPjwtDr8h2f239UGN
         7FMKhG3Kyl9b/PqlUk9qf78NJW9Slby7attGDoY+WQBkL8FktESNSGsXXdAhPprJAFpj
         lNR3TEBXpCYqSOi+dp74fXwY5gKXiwZ1R4iOd9+FPRLjTGdrhBVFRNjzUHTt7LyaaGcE
         E8+teBPP4fafQz7pgC86/yCtvM7gsggZ6tQLeUZ8sWkr1n/F4M2I+nenxfg3FsK9JfOe
         eoTQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=G8UpnFo04XwcFGENRq0AooTXo/DoEHHzLn/VVGY7Mfw=;
        fh=LlpKP+E8LRT++1iqNtD7/XeUQkck2FnA+3lqhLqh/Mk=;
        b=Q10yZdEXgrXO7ZYhJKwpvcA6MU0bQNmB3uiwGGpypVT5GfUwBmGVjkwqeD27PNbvms
         5j7EgDkXtJfT0ltBYquRy6zUlgQFVCqvvOsSCZji3F8ljR/tZf19by3g9ngdG76zHiks
         eeEUE+JE7RZRxMuvIpoUNp5hMq0OjsZbJj+CYZTjVvYn/cyYv+4bfAIF//JIUbz4qsgT
         SfmeD4l0fFHveWwKfZqoGO2BdKF098Eyy1ANMAVrF33A3lP1qJZ4YM8HbgsHQfjwCw0I
         ZreeoHMM+q0SvQrZMtdvbRXU1Pq0rDTw17UDkDwKGpubThHbin83EbfMkW3kpM+wqi3r
         HMqA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=a7coUpce;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.167.176 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750124232; x=1750729032;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G8UpnFo04XwcFGENRq0AooTXo/DoEHHzLn/VVGY7Mfw=;
        b=LyhMn18vasSNlZkd6PJMtytqt1dHx85ZFUUMYKkEK68hCIn8INvOnfj7alBDJvSc1b
         xuFmXyCT5Yk7Urvh4HJRMuONrpXuGM0E8s1SS755dsZQqt8j4YY5+9s9bfkBCyARmqqs
         iWsLx7D0gQUj1ZN6P460flJrtG+pQfo4pcoFEagvzgcwq7INIKDQZjwFNdJ+Xadp+IC8
         gzmp3KmmnXoYQ0npTaTdh1DEsCIiUwNqKrq7mVfbHppr/BoB24rDlUCJIUkArU1AE5Wi
         CjDhq6jJLqb5Tr52fRs1HLaJ6MV3bTxmfEKDsCInJpc4vPkoWKVD7IGmCsA+haZ/qyYq
         N4/g==
X-Forwarded-Encrypted: i=3; AJvYcCUPCUUkIvN9RkO2dJUtVlzcom+eUYw6Sf0gXLaN8HPacyU06FEMcPBlDWEubwjbitXDpA7kKQ==@lfdr.de
X-Gm-Message-State: AOJu0YzW6VmbI4lwGh5w0iZSmMrtYfgppywsSRTgg0ubvuUItRJy7+6Q
	9YpvEAfxA7PcILYJupHbreNTtL6H9sWl+ORk/84wu7EqUsoHWJ/HeqCuPD3AXCmeTj8=
X-Google-Smtp-Source: AGHT+IFz0Q+nHJIveokzK2xGPRN0cdcrmtt+8sS+c23+LPddFhYW4YumET4lymujZSk/9wxaEkxeRw==
X-Received: by 2002:ac8:58c8:0:b0:4a5:9b9c:2d9f with SMTP id d75a77b69052e-4a73c4fce3dmr200764921cf.2.1750124232010;
        Mon, 16 Jun 2025 18:37:12 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZcxvEx7htpJaRqZZnCrE68O4Atn0SosZINMs6S5h5nQlw==
Received: by 2002:ac8:5ac7:0:b0:476:6bc3:c758 with SMTP id d75a77b69052e-4a722b4e740ls72853331cf.0.-pod-prod-05-us;
 Mon, 16 Jun 2025 18:37:11 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCX25w5Cn18KjilKRHUVgYCUVqYjZklIvcVt6qoufNcEnwIPFr5a3Jv2IBkNF5S+mLI5BAnMaEeHCZp6Og==@gapps.redhat.com
X-Received: by 2002:a05:622a:1496:b0:4a3:d015:38b4 with SMTP id d75a77b69052e-4a73c5d0357mr185241781cf.34.1750124230869;
        Mon, 16 Jun 2025 18:37:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1750124230; cv=pass;
        d=google.com; s=arc-20240605;
        b=eHZiB/ytntUUc5WDzoBvPsiwcyUVSBo/u6Rv3QuHH3up/7wuHhFBhp81f1lB6mF37f
         x1XUkuSnP9wETkq0XED0aSXIJeSgSgWsitRV6Vq377tSHx8n5TAumnfIsBg4FnlTnMpK
         lVjZ7xMFV5Ujg5alM5nEJdiDrlbHL76iEW+PUwuWMgc36wTYreMDDo3UO/N3rBiYcNdi
         KgvLGEXWwCiAjkkiZvP9Rja8LHnFbNRKeZwtNhaQFPVGtoAOSud9kW7qHPJu6kiY7DaN
         4x87Mmkn2sWrKujkuKfBBuSCTtVYdD+0wloTl4jveAVSpRXrfLGAwRTOU8LL+1VQCuHa
         nPCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:dkim-signature:delivered-to;
        bh=oWVNxy0MnoH11dLqoBXQ5J/NqL/mMXe+1qNX3/oFhQw=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=aIlYiVfkL+zbS0F63UhQs9iOdydNch9xSPJmTl3Mb8tA3MmYkzrBPf5tabRZ+FFJfF
         Li/x6hKs+j1t50Pzrj8oXzyvCeFsNKKkGSYmyH6CB9KM44mfgvC/RKlmVCOrpG50lt80
         pkIhhGimEKy+4pQlXvcfcb/UTtWaLCNGpI0LWg4Jm7FP671pLBPQWRWD/uyWwizfawaZ
         nhFmj/kr1EfdeiQrm5bwSeFWo7cLdVKjOLI/tiUSWV1mTEbIB3GspmEnozJPAlAxFCYi
         /evQooFeelBvjIvZzIX7meacogQG6GmYUopxwOFENWNA151B4Dpv62vKQZVwzz56ovN/
         FRSw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=a7coUpce;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.167.176 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4a72a2b95edsi109422121cf.92.2025.06.16.18.37.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 18:37:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.167.176 as permitted sender) client-ip=209.85.167.176;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-424-AvoubhJrN36ZcizGJsEvsw-1; Mon,
 16 Jun 2025 21:37:08 -0400
X-MC-Unique: AvoubhJrN36ZcizGJsEvsw-1
X-Mimecast-MFC-AGG-ID: AvoubhJrN36ZcizGJsEvsw_1750124228
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1364D19560A3
	for <blinux-list@gapps.redhat.com>; Tue, 17 Jun 2025 01:37:08 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 0E310195E34B; Tue, 17 Jun 2025 01:37:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0B99A1956094
	for <blinux-list@redhat.com>; Tue, 17 Jun 2025 01:37:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 86DAA1800290
	for <blinux-list@redhat.com>; Tue, 17 Jun 2025 01:37:07 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1750124226;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=oWVNxy0MnoH11dLqoBXQ5J/NqL/mMXe+1qNX3/oFhQw=;
	b=AS2McUZczoUmM1SuOOOY/UrRIWkPw5yPfa/P1XEjphUYQyljKzGSscOC56Jyzx1c75nn8I
	1iD6oF5xZnoNGpC7mtfwhllK4+JlHZoIQ3IoLoBrLMPBPsKZ6Dtw4gyXo6820dMrtaCR8i
	LtKMB5gtOFOE6jPpGDVFmcbw+vrjfTCraD/xBy578AeSe8VS8iZD5gyiTExF2QicZhn5UR
	6jV3uV1R5uuPul7qy1u9tbpaMI2GM6My8wNLV4VLsjEOcQdJOK2hK7asoF2aqkFAcnAhZJ
	6Klb8hBuWHwJno9KzNYwB0y2YmoGWbwToh/BPvOWh2gBks62sdCFNh5KkuXrIw==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1750124226; a=rsa-sha256;
	cv=none;
	b=hFCxyhsfcbp4ylaU5hC4nvASzztfX6Xmh2cedbBGpaocsfS+4vgrmaXZRDkYAPauuOUcnT
	68VACIS1MN+7Ld0x2y0bEebDh+j9/dOkMswWpVwRjS6d082rPKJJRehNqHXs6sS/pgliRb
	hz/VfRg583BeKgtonFj5MX2VG+E2adpNTVOQLwRR3CMqy8MvDQf6CmTDo0CVRnAktsffwa
	StLYnG7OTvF7wApD7ieWQW9PEEbZ73koooKxR3TjeW85MV1ytJwbiCokcA0mCbKkbAwVVb
	KUOtRnpAxn1CTU0JRLa2wLVRCMFypqipeZJCeFC7j8XJI9Bjwl2XUx7icY+9NQ==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=a7coUpce;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of dcrone215@gmail.com designates 209.85.167.176 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-257-QoUuQkXcNieDQRPbe90tJQ-1; Mon, 16 Jun 2025 21:37:05 -0400
X-MC-Unique: QoUuQkXcNieDQRPbe90tJQ-1
X-Mimecast-MFC-AGG-ID: QoUuQkXcNieDQRPbe90tJQ_1750124224
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-4067106dd56so3250209b6e.3
        for <blinux-list@redhat.com>; Mon, 16 Jun 2025 18:37:04 -0700 (PDT)
X-Gm-Gg: ASbGnctxWfOoI1lW5234WPRVbmPHDxu6E5mKqHS5ZFAoybM3J1vGS+MqXzrZVvhpRfQ
	xyDpKQm7QdB89CoRjjrYDYf0pTlZNlGekypZ2MEA7REHN/e+FRU3QFOJ1ipHXiNDgRRhqxwJzmo
	+e8T/pJDdhG7altJcupaTSbBmU9BST8Xz4VTG+nceywi9W4/08WiIHNTrDDT0btqobTQ2ieN9jJ
	9OXyHcu+MsRQu8cIyXORH+7k6mjhzX1/SifGi3qXcnM04GQPOvqTGl1AIZakUIsvP2vQEM0X4Q4
	ZtGVt3o36MnIWG73GpUrGVGCnkCU8wi4V0xAloJui6URpyX2ZwLxAUlliQkM/WyseAJ1AcvEQIA
	VfcLrMIJr5npcO8oiGJ/lBA0Jk+8WPc8gk1cdMrrQ
X-Received: by 2002:a05:6808:244e:b0:404:c04:e38e with SMTP id 5614622812f47-40a7c1c9445mr7154847b6e.30.1750124224090;
        Mon, 16 Jun 2025 18:37:04 -0700 (PDT)
Received: from smtpclient.apple (c-76-138-99-100.hsd1.tn.comcast.net. [76.138.99.100])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-61108de9b6bsm987203eaf.18.2025.06.16.18.37.03
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Jun 2025 18:37:03 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: mate desktop on arch
Message-Id: <17CF0AB3-0ADE-40F7-8C1B-076BF5444EEC@gmail.com>
Date: Mon, 16 Jun 2025 20:37:00 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ehL3wxrs6B6kZtyoDYDQBl6ap2Af6gz7ArtxnqpRFsE_1750124224
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=a7coUpce;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 dcrone215@gmail.com designates 209.85.167.176 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

On an old machine with I experiment with, I have the i3 desktop.
Now I have downloaded the mate desktop and lightdm.
I still want to begin at the console all the time.
i3 runs with nodm.
How mightt I switch to mate?
And if I like, how might use i3 again?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

