Return-Path: <blinux-list+bncBDGI3AUYYYCBBPVBQHBQMGQERA7TUXA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 924D7AECA4B
	for <lists+blinux-list@lfdr.de>; Sat, 28 Jun 2025 22:29:53 +0200 (CEST)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-23494a515e3sf23462785ad.2
        for <lists+blinux-list@lfdr.de>; Sat, 28 Jun 2025 13:29:53 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751142591; cv=pass;
        d=google.com; s=arc-20240605;
        b=ZjKuX7YD7TOG14teo4naIB2tJOG74pPKI2A83y/I9Y28fhoG1Ss0jsVVCRIqO4vO1L
         bjxUkJEkCW/GNOs1ddeYJFNSVOA1nq+oNWO37NTrrbKEXtdkksLSMo8a9VJ6SpPxwZHr
         cu1UXVL9Vf2O54+JVTakh8fgd8nYbcMtoDPlj+ID2fpzSv2meKlxFwhf8RLvIkBU1aZs
         mQHaQG8BTnsrdo34771pZz9mns2EQ1RGew3PBflpq0Fa0JRO2DUnrELMKk/xlpByrjuY
         cgp01PMRZz5pHsExnnuzmjNcOGtxxyLa/5bmbnlA/2MKY7iDv5feMzE/6/sSsX7Gi2HL
         3nIA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:mime-version:message-id
         :subject:to:from:date:delivered-to;
        bh=FGcioLwhqYyal/fidUuc+UyJjJaAgbLy/B44B2eUSo4=;
        fh=GgB8Korltln7v/TzUnszYNT8n1z1NyIaoDuTLFLy/v8=;
        b=Z1RD5BcFiH/D0agaPs4tGsaXCOxZWdQc483aff6W0giI6qdtYaaKpFTBD2dPT2pr+K
         h/Cg0VeJzRvdxV9nkby+EY5Rs4ba2JTaHKtx2uRkEVMT7jRj8oosYpeFD5Fd1cp+ik9C
         spFv9a+SrmWZjFBDh8IXF0/SvPE25aF1+dp7qnblV+GYyAhzTAcJPcHlgph8DOqwPSq2
         mLYLUJo8xthNiiDad2dQd9mRDaDnxKvU0zf94iYHxuzTjo7fqs4A6J9yTMF5fN0Bb2bZ
         SPxTrsC2TNFmVOOUyecMNyMkJCBghyM5fTMls23/xgfaKUhinGA199CZgxw4Q8FJdoVf
         yMaA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@panix.com header.s=panix header.b=YLoSBRG9;
       arc=pass (i=1 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass fromdomain=panix.com);
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751142591; x=1751747391;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FGcioLwhqYyal/fidUuc+UyJjJaAgbLy/B44B2eUSo4=;
        b=cssseC7qrQSxibRD4R/jbdoaBBzkQEID2s9TQ+rs0Fo9ht1QA3KlTwnyoFSMX7kVAq
         p+CTgR9xR5w73ADxP+E+V8SbcOwvo3f72Wj1mx8O2jn6XNwE7r1PMvdDbwoj/Enj6aA8
         hQVBjHmBkwwtwb6N0yCCCChpA5aAYBStL3sS6WwWsJ8Nvvf1H9777bT8SV290Zkawv9g
         O2RI14KAcb8MekfDnamYcELfOzGzTZTfiG96Ud79sfoUk5VkBdhN0ujpHjq7Kv2U7dov
         7NUTnJzElMTCDrpqF9y9UhFOW+gsJ91ZKqTI47Y4WHKETXKDFzSApJHo8duHeiMPo8q2
         5sqQ==
X-Forwarded-Encrypted: i=3; AJvYcCU3HxrMUAa1PBMx5LOGJGDeEBhw+l8qpgA9qzpUqurPAAYzMngGp4izhD+dqSELk6TiBHO5Yg==@lfdr.de
X-Gm-Message-State: AOJu0YzlNBMrHzIQYK8dA5UTNEmq9oWFnf3H9L/Ej64AufO9A0imhg54
	UDd4BCGBdTMVYyeRXcrGct9iK+2+wSNEG+q1CEK+iUWPVgE+/siw0H2dq+WZrLW0Hvc=
X-Google-Smtp-Source: AGHT+IFOFGXwsNl6HTeDl88LMzsxbu/2IoSiBL/qhCpGVSOO8kz3UQ/nLNSUeQTbhQ9N7zE4Q5N1rA==
X-Received: by 2002:a17:902:db0a:b0:231:d0a8:5179 with SMTP id d9443c01a7336-23ac3df2193mr122863175ad.23.1751142591018;
        Sat, 28 Jun 2025 13:29:51 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZcFxp0pRqS7lfaLXGtn1xuC7gIrxYS/IqZ+BNbFL+O1gQ==
Received: by 2002:a17:902:c950:b0:234:b428:baa0 with SMTP id
 d9443c01a7336-238a8199ffdls32667515ad.2.-pod-prod-01-us; Sat, 28 Jun 2025
 13:29:49 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXAemLsZ30Xuh5RFccx4kUhhMJeJE5a231wDgNCgMg8h5OdZh+sj9jNYCxLz50fHxP9If5Ljnrjs+QUkg==@gapps.redhat.com
X-Received: by 2002:a17:902:da87:b0:223:65dc:4580 with SMTP id d9443c01a7336-23ac4640ab7mr130181205ad.52.1751142589465;
        Sat, 28 Jun 2025 13:29:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751142589; cv=pass;
        d=google.com; s=arc-20240605;
        b=MyQVj3IX6PWZrk4Fdwdk6KpWp38PlIitDZ7zytTAyNioQf4h5OYxyG1WOkOT7cSq2Y
         ABXRkv9XIU0l3uAxwjqU77Cxsp8qD9dVHgkVCqsW1bFKhHnakjgdk5ALsBn41LbiibLf
         BVDHGp23w7gLT9rwDkp5Zhe2kEZ6Ds9xq5BkjXyDd92bSGzNmT7WymQXmzV7PB6b9KoY
         Tm2IXav9LtMu6FNbDINXh9RgRfxcfwCVPMPUKrkSR2fQe+Mu+KEr7F9JsETR6YAWjulj
         7Wu2Qm++lOlsqt61eb9fcp2ObXv+4ANoz8cxR8jqb1x8jAghR2d8V/FLkllO/T/ruDDi
         G6ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature:delivered-to;
        bh=Gt+qhXhYfHa3mWPLVP9ICCWqqV7w22J1lYbSQU0fu/I=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=GuTm8KFdRB6n+B3uBY84zXTha9/uPC1zV4XwsqP85d8bYat/frO11pTU9CZ43azyFs
         kppltemq+HWo2Kj6eilb+IvSmKs3ReT0TJXgnlYldLNrhKQ1T6mstSK5Ia7+eaVzi2fD
         C8sW9+6c4VCYi3oC3RGh5iVKt99t56MHBxcLDBvu9Xz7mBuTaE9l+rKqyLFIHETveg6F
         cegDhYjKK3YiXu0Tq3FknvscyAT4X0RmGGd2KYIKPlISVoJlD87J3eb8FXZA2qV0NCRZ
         IpModEdQeW981y6jxVlFgM9Jhxs8YFfYvuHjn3nA1WpADbhXrwo0ffuBIUTjmOGLtyXG
         zhpQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@panix.com header.s=panix header.b=YLoSBRG9;
       arc=pass (i=1 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass fromdomain=panix.com);
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d9443c01a7336-23acb3a1530si56868985ad.238.2025.06.28.13.29.49
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Jun 2025 13:29:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-284-IvLZE-cIOXCOvUmCk8EVqQ-1; Sat,
 28 Jun 2025 16:29:46 -0400
X-MC-Unique: IvLZE-cIOXCOvUmCk8EVqQ-1
X-Mimecast-MFC-AGG-ID: IvLZE-cIOXCOvUmCk8EVqQ_1751142586
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 066CC1800287
	for <blinux-list@gapps.redhat.com>; Sat, 28 Jun 2025 20:29:46 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 0316A180045C; Sat, 28 Jun 2025 20:29:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0037218003FC
	for <blinux-list@redhat.com>; Sat, 28 Jun 2025 20:29:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 75972180135B
	for <blinux-list@redhat.com>; Sat, 28 Jun 2025 20:29:45 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751142584;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=Gt+qhXhYfHa3mWPLVP9ICCWqqV7w22J1lYbSQU0fu/I=;
	b=PlO7gJDkzsOZnv2xryhGqEYdgPM5Up7eJ2yDwUYdFJ4BVarXDDi21YdFJjT8Z/FdU89zix
	7QaxTjnjlAcjYJrhiEB5Z4w5RdSwj6bRS8uXXaFKR7hdSTTU3lVbitv33/JU8QYIp/UQ38
	8CdnDIMbnTq8pHZr3qoycsxoZLpal4qzYjNrmLo0N3u32xo9U8yHHDP7L6lc3inYXGvvou
	gzQIxC7a+4rSMtybpPqlJIWq31zNT7ownTohbMsrnQXoy5icMy7RsCWpXMQ1PMLIbME55K
	3eU688HBI/Rvd+CiXfTuU7DP1aebrrPUWakpQke9FhUwKWeFyaxnCAgYGoZSdQ==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751142584; a=rsa-sha256;
	cv=none;
	b=Mlyuvi3GU5qbmJMogrRxOycj1d7QJGrMpRRtY9GKzrc6d59fG5ESjYayfXEAu+reI6FMu5
	AbDHBqnk1sY+eR+uiMMouxTMp6jsLKP93ClKejgwq8pvU2yuqkZGRuQe6hA3dVWOWmRZMo
	CED5o8T7FrW684i6I6A+B0+rQ27aewSyvELX5HyZoAY9/VpLHC0dj7vDMxi7hiSgSQ9o0Z
	8bHA9myKxxViXkf1qJ9bJzuKhdv0wjkm1polPzDIPzb9nXHopjyjMrLcFkHR4m9bWsIL2h
	9To1/yCmtP+2JOZe0JHBXDzOaPojL37IxiEqEf8wqqUIMxXWptFJD95y/OwINA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=panix.com header.s=panix header.b=YLoSBRG9;
	dmarc=pass (policy=none) header.from=panix.com;
	spf=pass (relay.mimecast.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-547-uqtt_39DOdSh8EWBEovN3Q-1; Sat,
 28 Jun 2025 16:29:42 -0400
X-MC-Unique: uqtt_39DOdSh8EWBEovN3Q-1
X-Mimecast-MFC-AGG-ID: uqtt_39DOdSh8EWBEovN3Q_1751142582
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4bV3tt2HJMz4THk
	for <blinux-list@redhat.com>; Sat, 28 Jun 2025 16:29:42 -0400 (EDT)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4bV3tt2B0Dz1QXM; Sat, 28 Jun 2025 16:29:42 -0400 (EDT)
Date: Sat, 28 Jun 2025 16:29:42 -0400
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Orca firefox tutorial  needed
Message-ID: <aGBQto8CI1W59UzK@panix.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: gPH1TmHc8j6XP9NCuG1P_K1DjPDaLww124-3O6HuHlM_1751142582
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@panix.com header.s=panix header.b=YLoSBRG9;       arc=pass (i=1
 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass
 fromdomain=panix.com);       spf=pass (google.com: domain of salt@panix.com
 designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
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

Can someone point me to a tutorial that explains how to use Firefox within Orca?
Every time I google for tutorials I get documents with instructions which
advise me to click on this or that and assume I can see what I'm doing.
As a lifetime lynx user,  I'm a little lost among the gui.

-- 
Rudy Vener

An audio release of Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - Schwarzenegger's Views Vie With The View's https://limerickdude.substack.com/p/schwarzeneggers-views-vie-with-the
Website: http://www.rudyvener.com



To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

