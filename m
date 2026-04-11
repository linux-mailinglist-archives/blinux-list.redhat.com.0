Return-Path: <blinux-list+bncBD36XIOOVQCRB6V55HHAMGQE2K3PQSQ@redhat.com>
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJ/RGP5e2mlQ0wgAu9opvQ
	(envelope-from <blinux-list+bncBD36XIOOVQCRB6V55HHAMGQE2K3PQSQ@redhat.com>)
	for <lists+blinux-list@lfdr.de>; Sat, 11 Apr 2026 16:47:26 +0200
X-Original-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2343E0676
	for <lists+blinux-list@lfdr.de>; Sat, 11 Apr 2026 16:47:25 +0200 (CEST)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-8ac9609d3d6sf15660286d6.0
        for <lists+blinux-list@lfdr.de>; Sat, 11 Apr 2026 07:47:25 -0700 (PDT)
ARC-Seal: i=4; a=rsa-sha256; t=1775918844; cv=pass;
        d=google.com; s=arc-20240605;
        b=Ka1PrKL1ljgmsZVhhZg8aNjOoA9WAjlXB4Mi6MmpViDeKdSU5QzIu/txdP7ptpIpgh
         Avfz1GNNAq/dTEQ7nFIAjpt6GSnMn6FPeCJiEar/hf6FRiReL15oJWBE/O3rGmO622ev
         hnsqeC6F0RV4hABbnpazIEWAf8/25b7++PzpitpVgYsT2bS7393aL9bQ7f0aUE0My5FH
         4DfVk4qs4vVluwh0CUa3h3kQoPv99XviejjETn1vPj9+BajeVx+QwIhr24AXM48V5Hms
         2VqskM8xXDqXqb7vuKpbNQf7D+/0Awmxu4UJC9Y5JZ4DwOvyQkfLPUmfyijvCD7Kujeu
         TXgw==
ARC-Message-Signature: i=4; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to:dkim-signature;
        bh=CPB+ZxKNQ36t8PEsqiBNRUVTckxu0H8UOZ2mauh3PvM=;
        fh=Zw7SrU7JoefFcgyzvFnk7xclRFyoEQmw1XsJh/9pzzI=;
        b=LyfPOkMiZbJHMcHfAJBpWAgCN6qdvIEtn8cAVeoZIwxtk6NlAOvPETBTapijqlKidO
         MLsIV6jTDHG+5NOriJA8vJ6rcuIYBYWWVSRVQFMg2fOsH8D1qzUART1iPYLdTEoJoZvW
         Cb+hdmXj+G0Fr/8bW3jrLylbLC/CIoxgzNLM8z5Rn+VeO3UhgMYedhtDCfLTcYtxg4KH
         LNLxhQl3LRVK00jYWyvKzWWvnOmEUXFJUPUNX0BPwJHsbb8RDsra/sEi0rfJzjGCjGJG
         HRZmcf1r52SEBeiiHs1f4sPphQBvUya1MGVrnoht5ZQcUFihIYw00DYqkYAkJ064bwBW
         NXfA==;
        darn=lfdr.de
ARC-Authentication-Results: i=4; mx.google.com;
       dkim=pass header.i=@karlwilbur.net header.s=google header.b=Pl8A2+3D;
       arc=pass (i=2 spf=pass spfdomain=karlwilbur.net dkim=pass dkdomain=karlwilbur.net dmarc=pass fromdomain=karlwilbur.net);
       spf=pass (google.com: domain of karl@karlwilbur.net designates 209.85.167.178 as permitted sender) smtp.mailfrom=karl@karlwilbur.net;
       dara=neutral header.i=@gapps.redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1775918844; x=1776523644; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:delivered-to:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CPB+ZxKNQ36t8PEsqiBNRUVTckxu0H8UOZ2mauh3PvM=;
        b=ps/YJjHZokcU/AeK+6mFAkiLrIWbzUaB8qlu/h1uoO+9ivlkKpb5Y+QWnb4sr5n9o/
         QJ+tTdaNCP0x0bNNUO7e2CFzt3yEJuOKAnrr2Wgk5x4VkF5SLZVR38xK5JGMv4Bgf58t
         jYckvBb09I86jNtsEhEq4iAblH8ijPgfDP/vGzyubThk5XMGkhfJAFIKTtnQv8W6OKHI
         e4ZUAA62pp/ULICgKGDdZaz8er/VSR7f875YN1gmoxuKxZCL8kxSoM6AMIq0gQJx/Lis
         +f/5kCe/TdkesGcbPiZeqQXhOWgiCCdaN7MOs74EE9fhvzOlAThYUrySGxCX4bon/UVF
         aZDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775918844; x=1776523644;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:x-gm-gg
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CPB+ZxKNQ36t8PEsqiBNRUVTckxu0H8UOZ2mauh3PvM=;
        b=c1Qrgc6YbvlhZZzQAEazRFClcFfpT/ESiIbfNKsSwSsgrTblnh4ljVE3fYCD03fxrK
         HOIKXYdkvv57/cik9/wjhXDv+hVMDD1BSqiK+x87Ghkbh+L4idHjMRYmi467L3ULe/jB
         9HNlYaLvFWzVQ3pV0MgCSoDeEcEX+6b7E5Ly8Nk8pKypKZ3lBWn1uxBFuFwREkD+ewWZ
         wttr5TBW61a0SRd539OSb7GTv36ZLOm13+XK7FSqtc+RDYCHV9OE0bXpC3BUK8EaKeew
         zvrUenJbGEyBHDLKG0p8dRsKqDxxc1SjpyvBomtsqXugexwXAbOKnJfxUmbZbTlPLMbh
         xm4A==
X-Forwarded-Encrypted: i=4; AJvYcCXaFmDsrlbZ/NAiNzPMjsFep4lA6zdSp9BdD5boGxDVfytQXAU1FZ6qTYexYb428uVN3Ka8SQ==@lfdr.de
X-Gm-Message-State: AOJu0YyJ1imgqj1auPOWiVMKIi+hKcHVD4ZtULna7OgsxG98iXqbQTCD
	j0JMemktANAn6uTygnGoGjNoOTR5h1Uuho3CGzqZrvVvs0cOPAUXsr8jUJiZ4cNQ2U0=
X-Received: by 2002:ad4:5ae9:0:b0:89c:452e:aea1 with SMTP id 6a1803df08f44-8ac86303bcfmr108687916d6.55.1775918843438;
        Sat, 11 Apr 2026 07:47:23 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h="AYAyTiKQ5S/oejLvM5EKu0IXY65+H1jnLzATVJtfko7tj2c+lA=="
Received: by 2002:a05:6214:5015:b0:89c:6948:e1e5 with SMTP id
 6a1803df08f44-8ac8336f02dls36936176d6.0.-pod-prod-01-us; Sat, 11 Apr 2026
 07:47:22 -0700 (PDT)
X-Forwarded-Encrypted: i=4; AJvYcCXyDENvmJdTekXbrxiDKkWBUabZbxq5tMGW2hc7aJ29VxJNqgjxU/9Cd2LPPRO70DBvaMmyaX3pxOG94w==@gapps.redhat.com
X-Received: by 2002:a05:622a:229e:b0:509:4406:44e0 with SMTP id d75a77b69052e-50dd5b15e71mr116668491cf.27.1775918842129;
        Sat, 11 Apr 2026 07:47:22 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1775918842; cv=pass;
        d=google.com; s=arc-20240605;
        b=FL5j2sUowAmPV4hvB/D18h2dKTkdhkMFXNztgOPlNZ0OMGBO3qH05v7RidPqPTRPXG
         QlD/LA+VlUI7iav3ypOtK00fJWAqY5wQ5m0yvXF4XtCpWvQGbEC1et2EwvXsB9Bkciyh
         vG3gSYVY+qg99oRuwAzPy0AYszKaZpyPgo4DvE3r6f5EcVfPyvlPFb68CqfIckvIUtNn
         U+X/ki3kcR0YAQ5smzQ7P2hbvCn46H161Abavba3bATTG1FmV3/FRAyI4batdAqD49fn
         6tWgWGxKCH2zeAS37YwkfW9Madaxaq6wutN++Gmqv+QXqmXIe52+poEZg16lpxgRiIvZ
         3lbA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:delivered-to;
        bh=F2s7ghTYsexzS0opU9Q1ta7OtG5ErlfJxmooPrPKiMU=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=OzkxtlHra9NTAaPmhdJb37Eksb58GMEc/A+ytz1/uOcDZXKTZOZ4tIDYaF6zuPClm9
         0yX9FiTnyZp0wssQ0vBtKzUqFtn+c/i2uugspWTsRDgh4BlKQTUbAMp5P6NnQLih2bOO
         ava+Nz01s9kcfTntyZgFLvN/BuUmtA9K2+vsN/7ZIupLum+o1aBn09jX8wQ/zHMX/5Aw
         yYA95lRtErOt7/z1eSlCx38eIBKInhpFaUCexQRr67G2J4cFTrE/KzszZVgQZpQmXyHK
         pPHNb2gyq8b0sphAg84beju2k91egVHNYk1lSklJ1E6ENpTdErClfZHfRVb6qLfolI1+
         t8Iw==;
        dara=google.com
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@karlwilbur.net header.s=google header.b=Pl8A2+3D;
       arc=pass (i=2 spf=pass spfdomain=karlwilbur.net dkim=pass dkdomain=karlwilbur.net dmarc=pass fromdomain=karlwilbur.net);
       spf=pass (google.com: domain of karl@karlwilbur.net designates 209.85.167.178 as permitted sender) smtp.mailfrom=karl@karlwilbur.net;
       dara=neutral header.i=@gapps.redhat.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-50dd5741d62si70197331cf.413.2026.04.11.07.47.21
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Apr 2026 07:47:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of karl@karlwilbur.net designates 209.85.167.178 as permitted sender) client-ip=209.85.167.178;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-73--4M357qcPk-Dnl8irRfY5Q-1; Sat,
 11 Apr 2026 10:47:20 -0400
X-MC-Unique: -4M357qcPk-Dnl8irRfY5Q-1
X-Mimecast-MFC-AGG-ID: -4M357qcPk-Dnl8irRfY5Q_1775918839
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 54F61195609D
	for <blinux-list@gapps.redhat.com>; Sat, 11 Apr 2026 14:47:19 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 39C6A1801AD0; Sat, 11 Apr 2026 14:47:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 367DE180049F
	for <blinux-list@redhat.com>; Sat, 11 Apr 2026 14:47:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8FE9C1956048
	for <blinux-list@redhat.com>; Sat, 11 Apr 2026 14:47:18 +0000 (UTC)
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1775918837;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=F2s7ghTYsexzS0opU9Q1ta7OtG5ErlfJxmooPrPKiMU=;
	b=QVwULj7UUiGL1omA1AIrEVbZOrBrSuiSh5o6Rr4Lh7aDbtv7Z27SWlG6upL3lDwRXH+SI2
	Gj3CI6HHsYweDgR7jHiXx8v+GQgrqS4Z5vncORUAz/LQAlD1GOgmUn4zycrqoJ8rU33NWf
	1rHVYzYkfJTnhrHX1d1InIlo9pneC4fMpvEp7E2sKbqQXp0exZs3yEiumy3ahnMcG5Hv1s
	XFLQqWBSzeinTc574zfsY0vkoao6hUD2/mZZ7I5g82YSQNYo9N0lrsYrchPfjq7ylBJfIR
	1EkgYcBC5F0mRTySuIULCLML0FnmNduGp6RosLTUczVDQpHCifnv5SVrOxPFfA==
ARC-Seal: i=2; s=201903; d=dkim.mimecast.com; t=1775918837; a=rsa-sha256;
	cv=pass;
	b=pmGXe84OO+JU1Kv4OJ59mdZ5iU91ifH9N7cEgzE8xC2+P9901bHcLqlOJiFJGNP0cwZyUf
	ej0FNn+i8yLjmTFPzztWn9Fy66k1NXHWCzjKFeReW7zNnfFdWDe3ZC+ZlaHLPsiwz5MBbG
	bWMwF/KztVec0vWywDF0UQSzjZmP+AVyF4I/2olLX1nrZ7+Zqolw0p0jBYCeft7mTg8lKP
	K9AuRr1svWeFj6gw2XwGBMcBQUrRuxfAkyCe+RDohFawnAG2ngI/gO+PJjKu7J4OcdhH2j
	ocEZrcMtP8a2fR3wj2sQ5obvfQTqu1HvU30aulpThdXf3UE/DM5ZFvv+rSTpcA==
ARC-Authentication-Results: i=2;
	relay.mimecast.com;
	dkim=pass header.d=karlwilbur.net header.s=google header.b=Pl8A2+3D;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=karlwilbur.net;
	spf=pass (relay.mimecast.com: domain of karl@karlwilbur.net designates 209.85.167.178 as permitted sender) smtp.mailfrom=karl@karlwilbur.net
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
 [209.85.167.178]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-215-DzF2ccK_NreHc7j8-Ql5hQ-1; Sat, 11 Apr 2026 10:47:15 -0400
X-MC-Unique: DzF2ccK_NreHc7j8-Ql5hQ-1
X-Mimecast-MFC-AGG-ID: DzF2ccK_NreHc7j8-Ql5hQ_1775918834
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-47018d34159so2303551b6e.2
        for <blinux-list@redhat.com>; Sat, 11 Apr 2026 07:47:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775918834; cv=none;
        d=google.com; s=arc-20240605;
        b=dlZ3SniUFnQBvWFrC6OfnAWEMf0xoABtuG8cWAqmFgmReAYqMYnWWkj4AHNFCA84b6
         1XwJ94e19AB5nkLY9bPargX93TZxTLPgKw4e7336JJiwXKvOsD2s8+8/O1Vlbi+PjS0X
         WkFYT129xzW01gyrAKEwTfKQ9K6MhCUWPu8asuisg9UxO014CbPFcoeqnXKk+Yn3PWMv
         DcSVlmSP8aq5uvhVHJnCy9TJS/6ZHtvjYbt3qnTREuaDzKzwH5Lo+cb65HXiQWoLbKz7
         LBrKs+2uFYP8SkqClYMbAydTxwNDl1DhKHbG5Wez2z0/vBGE5ZnaGU359A10D4RP71+o
         Q8XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=F2s7ghTYsexzS0opU9Q1ta7OtG5ErlfJxmooPrPKiMU=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=IRyHogLvhZZhKjA5Mh4SIT0HeV8Kti3azaqagUtjJMy6eQHYNJNK2/FCD9SMgRKAb3
         0n/5MHR26TbI2l1ch5O8kJphWUWhJU4Ac1qE+TBe8FYhXcIO7566IbTJ3iqiSGJRCMC1
         4I0CYNaLd5Ok8/eyjbOvL8zclFVmSkqGoEKOzd+mdabkKwiVguOEAypvhrCnctX0Vdyi
         kumXHCiL+Oi4I/f/nNK1i0jHzrWhQxXjIffbtcbtN4+erYwkTyGtUlhrZD4jYr0LNX9i
         GmCO6tSIOi4OyNCNrytIsgENYlT3ye0gkuKdOLf3154BSzPiLpP7pftgH4gjfqaDTNgL
         JOvQ==;
        darn=redhat.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Gm-Gg: AeBDieuMeCeLP4sSq0PPUl9Dp1svfdh+hkWL70MArv0l+kiWZrD0vmWwmOCHOn9bKJa
	XyFGmRLc8DZzZmoun74vzikWMtH6CmOeioNuv5Vb+HwHagdnEU7stQ3WThXT7tu72w72Qe1/4Qn
	xjmH9ioalgBsFO9A/ugfKtlc5p72NH7ABP+xnQ5fMHOQgMXivbio50AcUySjCg77VQPT+4bnSUE
	RdkXmy426NHF44rrqLkVfoMCHoeOhK1PwDC2d32sWVYgu7IVXdu2S+TFjvcyQLxrF8IVs3nCEw7
	VweN
X-Received: by 2002:a05:6808:c171:b0:467:36f:181d with SMTP id
 5614622812f47-4789fb06806mr3432217b6e.50.1775918834135; Sat, 11 Apr 2026
 07:47:14 -0700 (PDT)
MIME-Version: 1.0
References: <15d501dcc91f$6207f4d0$2617de70$@acbohio.org> <4BDFA179-56D0-4290-A13B-67E54209A54D@gmail.com>
In-Reply-To: <4BDFA179-56D0-4290-A13B-67E54209A54D@gmail.com>
From: "'Karl Wilbur' via blinux-list@redhat.com" <blinux-list@redhat.com>
Date: Sat, 11 Apr 2026 10:47:03 -0400
X-Gm-Features: AQROBzC3NLIycef-cQWVoWxiMsARezIXQhWiPLWvzwrtPvsa7zfPeQzGdufH97I
Message-ID: <CAMuGJS=fy37OdESVVO5x09OE_=-h7USQBQhT6KZMc8=3976t1g@mail.gmail.com>
Subject: Fwd: [ACB Ohio List] Obituary of Rob R. Rogers.
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: KGT1jqORCOvypsKZATWDSIHifQm89TGT4KE-0_5eL6I_1775918834
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: multipart/alternative; boundary="00000000000042427f064f305350"
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Original-Sender: karl@karlwilbur.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@karlwilbur.net header.s=google header.b=Pl8A2+3D;       arc=pass
 (i=2 spf=pass spfdomain=karlwilbur.net dkim=pass dkdomain=karlwilbur.net
 dmarc=pass fromdomain=karlwilbur.net);       spf=pass (google.com: domain of
 karl@karlwilbur.net designates 209.85.167.178 as permitted sender)
 smtp.mailfrom=karl@karlwilbur.net;       dara=neutral header.i=@gapps.redhat.com
X-Original-From: Karl Wilbur <karl@karlwilbur.net>
Reply-To: Karl Wilbur <karl@karlwilbur.net>
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	URI_COUNT_ODD(1.00)[15];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=4];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2607:f8b0:4000::/36];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=google];
	MAILLIST(-0.20)[googlegroups];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,acbogcc.org:url,uccomputinghistory.blogspot.com:url,greatnonprofits.org:url,mail-qv1-xf45.google.com:helo,mail-qv1-xf45.google.com:rdns];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[bncBD36XIOOVQCRB6V55HHAMGQE2K3PQSQ];
	TO_EQ_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	HAS_REPLYTO(0.00)[karl@karlwilbur.net];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	ASN(0.00)[asn:15169, ipnet:2607:f8b0::/32, country:US];
	TAGGED_RCPT(0.00)[blinux-list];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: BE2343E0676
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--00000000000042427f064f305350
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A few years ago I posted to this list about the passing of my father, R.
Dean Wilbur. I know that some of you knew and worked with him.

I am saddened by the passing of another friend and colleague, Rob Rogers. I
had known Rob Rodgers as long as I can remember as a firend of my parents
an as an option leader in the field of computing.

Although the forwarded obituary doesn't mention his contributions to the
Linux community, Rob was an early Linux adopter and educator. His history
as a software developer is only passively mentioned, but his software
contributions to the Kroger infrastructure were used by millions even every
single day.

This blog post, titled "University of Cincinnati's Computing History",
touches on some of his contributions though he isn't named explicitly.
https://uccomputinghistory.blogspot.com/2015/12/?view=3Dclassic

--
Karl Wilbur
513-322-2481
karl@karlwilbur.net


---------- Forwarded message ---------
From: Sandy Wilbur <sandywilbur.1@gmail.com>
Date: Sat, Apr 11, 2026 at 12:30=E2=80=AFAM
Subject: Fwd: [ACB Ohio List] Obituary of Rob R. Rogers.
To: Karl Wilbur <karl@wilburfamily.us>



Sent from my iPhone

Begin forwarded message:

*From:* brant@acbohio.org
*Date:* April 10, 2026 at 3:22:37=E2=80=AFPM EDT
*To:* brant--- via Acbo-list <acbo-list@lists.acbohio.org>
*Subject:* *[ACB Ohio List] Obituary of Rob R. Rogers.*

=EF=BB=BF

Rob R. Rogers, 89 of Cincinnati, Ohio, passed away on March 18, 2026.

Rob was born in College Corner, Indiana, to Fred Mark and Clara Mary Rogers
on January 24, 1937. He worked as a computer programmer and systems analyst

for the Kroger Corporate Offices, located at 1014 Vine Street in
Cincinnati, for 42 years, retiring at the age of 69.



Rob was a 1961 graduate of Miami University of Ohio. He was a member of St.
Teresa of Avila Church for 58 years. Rob was preceded in death by his
brother

and sister-in-law John and Betty Rogers, his brother and sister-in-law
Ralph and Barbara Rogers, and his brother and sister-in-law Joe and Carol
Rogers.

Rob is survived by his youngest sister, Nancy Rogers of Amarillo. Robert
and his wife, Joyce Neltner Rogers, who were married three months short of
sixty

years, have three grown sons: Gregory Rogers of Cincinnati, Christopher
Rogers of the Twin Cities, and Patrick Rogers of Boston.

Robert and Joyce have four grandchildren: Jurgen, Sigrid, Reid, and Willow.



Rob served in many leadership positions at the state and local level of the
American Council of the Blind, one of two leading national organizations of

people who are blind engaged in self-advocacy, that is, educating our
sighted peers how to make room for us in their world which is also our
world. Rob

was blinded at the age of five in an accidental explosion. Rob frequently
let me know that in retrospect that accident was the best thing that ever
happened

to him because otherwise he may have never met me, his wife of almost sixty
years.



My dear sighted folks out there, please look at us as friends and
colleagues, not as heroes or zeros. You will be glad you did.



Rob achieved his first amateur radio license at the age of 17 and has
assisted several organizations including the American Red Cross with
communications.

Perhaps Rob=E2=80=99s favorite fun activity was his participation with Terr=
y Davis
and others in starting a tandem cycling group for blind and sighted folks t=
o

grace the Little Miami Scenic Trail with their presence on many Saturdays
during the warmer months. TUKANDU began in 1999 on the Miami Whitewater
Trail.

Rob served as president and event coordinator for the first 20 years.

The TUKANDU Cycling Group is now 27 years old and is going strong.



Rob has donated his body to the University of Cincinnati College of
Medicine. His Memorial Mass is planned for June 27, 2026, at 11:00 a.m.

at St. Teresa of Avila Church on 1175 Overlook Avenue in Cincinnati, Ohio
45238; reception on lower level of church will follow. A Celebration of Lif=
e

is scheduled for September 19, 2026 at 10:00 a.m. to

2:00 p.m. at Fernbank Park's Riverview Shelter; park entrance: 50 Thornton
Avenue, Cincinnati, Ohio 45233.



Please, if you wish, you may make memorial donation to either of the
following organizations:



The American Council of the Blind of Ohio - Greater Cincinnati Chapter
ACBOGCC

https://acbogcc.org/

and access Donate tab

or direct checks payable to

ACBOGCC

Attn. Joyce Asher, Treasurer

620 Ridgestone Dr.

Cincinnati, OH 45255



TUKANDU Cycling Club, Inc. donation portal:

https://greatnonprofits.org/org/tukandu-cycling-club-inc

or direct checks payable to

TUKANDU Cycling Club, Inc.

Attn. Paul Hegedus, Treasurer

4407 St. Cloud Way

Cleves, OH 45002



We thank you for your prayers and love above all!



=E2=A0=A0=E2=A0=83=E2=A0=97=E2=A0=81=E2=A0=9D=E2=A0=9E=E2=A0=80=E2=A0=A0=E2=
=A0=81=E2=A0=99=E2=A0=81=E2=A0=8D=E2=A0=8E

Brant Adams, President

American Council of the Blind of Ohio



--=20
You received this message because you are subscribed to the Google Groups
"acbo-list" group.
To unsubscribe from this group and stop receiving emails from it, send an
email to acbo-list+unsubscribe@acbohio.org.
To view this discussion visit
https://groups.google.com/a/acbohio.org/d/msgid/acbo-list/15d501dcc91f%2462=
07f4d0%242617de70%24%40acbohio.org
<https://groups.google.com/a/acbohio.org/d/msgid/acbo-list/15d501dcc91f%246=
207f4d0%242617de70%24%40acbohio.org?utm_medium=3Demail&utm_source=3Dfooter>
.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--00000000000042427f064f305350
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>A few years ago I posted=C2=A0to thi=
s list about the passing of my father, R. Dean Wilbur. I know that some of =
you knew and worked with him.=C2=A0</div><div><br></div><div>I am saddened =
by the passing of another friend and colleague, Rob Rogers. I had known Rob=
 Rodgers as long as I can remember as a firend of my parents an as an optio=
n leader in the field of computing.</div><div><br></div><div>Although the f=
orwarded obituary doesn&#39;t mention his contributions to the Linux commun=
ity, Rob was an early Linux adopter and educator. His history as a software=
 developer is only passively mentioned, but his software contributions=C2=
=A0to the Kroger infrastructure were used by millions even every single day=
.</div><div><br></div><div>This blog post, titled &quot;University of Cinci=
nnati&#39;s Computing History&quot;, touches on some of his contributions=
=C2=A0though he isn&#39;t named explicitly.=C2=A0</div><div><a href=3D"http=
s://uccomputinghistory.blogspot.com/2015/12/?view=3Dclassic" target=3D"_bla=
nk">https://uccomputinghistory.blogspot.com/2015/12/?view=3Dclassic</a></di=
v><div><br>--<br>Karl Wilbur<br>513-322-2481<br><a href=3D"mailto:karl@karl=
wilbur.net">karl@karlwilbur.net</a></div></div><br><br><div class=3D"gmail_=
quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">--------=
-- Forwarded message ---------<br>From: <strong class=3D"gmail_sendername" =
dir=3D"auto">Sandy Wilbur</strong> <span dir=3D"auto">&lt;<a href=3D"mailto=
:sandywilbur.1@gmail.com">sandywilbur.1@gmail.com</a>&gt;</span><br>Date: S=
at, Apr 11, 2026 at 12:30=E2=80=AFAM<br>Subject: Fwd: [ACB Ohio List] Obitu=
ary of Rob R. Rogers.<br>To: Karl Wilbur &lt;<a href=3D"mailto:karl@wilburf=
amily.us">karl@wilburfamily.us</a>&gt;<br></div><br><br><div dir=3D"auto"><=
br id=3D"m_7095695992591843086lineBreakAtBeginningOfSignature"><div dir=3D"=
ltr">Sent from my iPhone</div><div dir=3D"ltr"><br>Begin forwarded message:=
<br><br></div><blockquote type=3D"cite"><div dir=3D"ltr"><b>From:</b> <a hr=
ef=3D"mailto:brant@acbohio.org" target=3D"_blank">brant@acbohio.org</a><br>=
<b>Date:</b> April 10, 2026 at 3:22:37=E2=80=AFPM EDT<br><b>To:</b> brant--=
- via Acbo-list &lt;<a href=3D"mailto:acbo-list@lists.acbohio.org" target=
=3D"_blank">acbo-list@lists.acbohio.org</a>&gt;<br><b>Subject:</b> <b>[ACB =
Ohio List] Obituary of Rob R. Rogers.</b><br><br></div></blockquote><blockq=
uote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div><p class=3D"MsoNormal"><s=
pan style=3D"font-family:&quot;Arial&quot;,sans-serif">Rob R. Rogers, 89 of=
 Cincinnati, Ohio, passed away on March 18, 2026. <u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif">Rob was born in College Corner, Indiana, to Fred Mark and Clara Mary R=
ogers on January 24, 1937. He worked as a computer programmer and systems a=
nalyst<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-f=
amily:&quot;Arial&quot;,sans-serif">for the Kroger Corporate Offices, locat=
ed at 1014 Vine Street in Cincinnati, for 42 years, retiring at the age of =
69.<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-fami=
ly:&quot;Arial&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p><p class=3D=
"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-serif">Rob wa=
s a 1961 graduate of Miami University of Ohio. He was a member of St. Teres=
a of Avila Church for 58 years. Rob was preceded in death by his brother<u>=
</u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-family:&qu=
ot;Arial&quot;,sans-serif">and sister-in-law John and Betty Rogers, his bro=
ther and sister-in-law Ralph and Barbara Rogers, and his brother and sister=
-in-law Joe and Carol Rogers.<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span style=3D"font-family:&quot;Arial&quot;,sans-serif">Rob is survived =
by his youngest sister, Nancy Rogers of Amarillo. Robert and his wife, Joyc=
e Neltner Rogers, who were married three months short of sixty<u></u><u></u=
></span></p><p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&q=
uot;,sans-serif">years, have three grown sons: Gregory Rogers of Cincinnati=
, Christopher Rogers of the Twin Cities, and Patrick Rogers of Boston. <u><=
/u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-family:&quo=
t;Arial&quot;,sans-serif">Robert and Joyce have four grandchildren: Jurgen,=
 Sigrid, Reid, and Willow.<u></u><u></u></span></p><p class=3D"MsoNormal"><=
span style=3D"font-family:&quot;Arial&quot;,sans-serif"><u></u>=C2=A0<u></u=
></span></p><p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&q=
uot;,sans-serif">Rob served in many leadership positions at the state and l=
ocal level of the American Council of the Blind, one of two leading nationa=
l organizations of<u></u><u></u></span></p><p class=3D"MsoNormal"><span sty=
le=3D"font-family:&quot;Arial&quot;,sans-serif">people who are blind engage=
d in self-advocacy, that is, educating our sighted peers how to make room f=
or us in their world which is also our world. Rob<u></u><u></u></span></p><=
p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-ser=
if">was blinded at the age of five in an accidental explosion. Rob frequent=
ly let me know that in retrospect that accident was the best thing that eve=
r happened<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"fo=
nt-family:&quot;Arial&quot;,sans-serif">to him because otherwise he may hav=
e never met me, his wife of almost sixty years.<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-serif=
"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D"font=
-family:&quot;Arial&quot;,sans-serif">My dear sighted folks out there, plea=
se look at us as friends and colleagues, not as heroes or zeros. You will b=
e glad you did.<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=
=3D"font-family:&quot;Arial&quot;,sans-serif"><u></u>=C2=A0<u></u></span></=
p><p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-=
serif">Rob achieved his first amateur radio license at the age of 17 and ha=
s assisted several organizations including the American Red Cross with comm=
unications.<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"f=
ont-family:&quot;Arial&quot;,sans-serif">Perhaps Rob=E2=80=99s favorite fun=
 activity was his participation with Terry Davis and others in starting a t=
andem cycling group for blind and sighted folks to<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif">grace the Little Miami Scenic Trail with their presence on many Saturd=
ays during the warmer months. TUKANDU began in 1999 on the Miami Whitewater=
 Trail.<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-=
family:&quot;Arial&quot;,sans-serif">Rob served as president and event coor=
dinator for the first 20 years. <u></u><u></u></span></p><p class=3D"MsoNor=
mal"><span style=3D"font-family:&quot;Arial&quot;,sans-serif">The TUKANDU C=
ycling Group is now 27 years old and is going strong.<u></u><u></u></span><=
/p><p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans=
-serif"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span style=
=3D"font-family:&quot;Arial&quot;,sans-serif">Rob has donated his body to t=
he University of Cincinnati College of Medicine. His Memorial Mass is plann=
ed for June 27, 2026, at 11:00 a.m. <u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-serif">at St. Te=
resa of Avila Church on 1175 Overlook Avenue in Cincinnati, Ohio 45238; rec=
eption on lower level of church will follow. A Celebration of Life<u></u><u=
></u></span></p><p class=3D"MsoNormal"><span style=3D"font-family:&quot;Ari=
al&quot;,sans-serif">is scheduled for September 19, 2026 at 10:00 a.m. to<u=
></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif">2:00 p.m. at Fernbank Park&#39;s Riverview Shel=
ter; park entrance: 50 Thornton Avenue, Cincinnati, Ohio 45233.<u></u><u></=
u></span></p><p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&=
quot;,sans-serif"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><sp=
an style=3D"font-family:&quot;Arial&quot;,sans-serif">Please, if you wish, =
you may make memorial donation to either of the following organizations:<u>=
</u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-family:&qu=
ot;Arial&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNo=
rmal"><span style=3D"font-family:&quot;Arial&quot;,sans-serif">The American=
 Council of the Blind of Ohio - Greater Cincinnati Chapter ACBOGCC <u></u><=
u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-family:&quot;Ar=
ial&quot;,sans-serif"><a href=3D"https://acbogcc.org/" target=3D"_blank">ht=
tps://acbogcc.org/</a><u></u><u></u></span></p><p class=3D"MsoNormal"><span=
 style=3D"font-family:&quot;Arial&quot;,sans-serif">and access Donate tab<u=
></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif">or direct checks payable to<u></u><u></u></span=
></p><p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sa=
ns-serif">ACBOGCC<u></u><u></u></span></p><p class=3D"MsoNormal"><span styl=
e=3D"font-family:&quot;Arial&quot;,sans-serif">Attn. Joyce Asher, Treasurer=
<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-family:=
&quot;Arial&quot;,sans-serif">620 Ridgestone Dr.<u></u><u></u></span></p><p=
 class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-seri=
f">Cincinnati, OH 45255<u></u><u></u></span></p><p class=3D"MsoNormal"><spa=
n style=3D"font-family:&quot;Arial&quot;,sans-serif"><u></u>=C2=A0<u></u></=
span></p><p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot=
;,sans-serif">TUKANDU Cycling Club, Inc. donation portal:<u></u><u></u></sp=
an></p><p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,=
sans-serif"><a href=3D"https://greatnonprofits.org/org/tukandu-cycling-club=
-inc" target=3D"_blank">https://greatnonprofits.org/org/tukandu-cycling-clu=
b-inc</a><u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"fon=
t-family:&quot;Arial&quot;,sans-serif">or direct checks payable to<u></u><u=
></u></span></p><p class=3D"MsoNormal"><span style=3D"font-family:&quot;Ari=
al&quot;,sans-serif">TUKANDU Cycling Club, Inc.<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-serif=
">Attn. Paul Hegedus, Treasurer<u></u><u></u></span></p><p class=3D"MsoNorm=
al"><span style=3D"font-family:&quot;Arial&quot;,sans-serif">4407 St. Cloud=
 Way<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-fam=
ily:&quot;Arial&quot;,sans-serif">Cleves, OH 45002<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D"f=
ont-family:&quot;Arial&quot;,sans-serif">We thank you for your prayers and =
love above all!<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=
=3D"font-family:&quot;Arial&quot;,sans-serif"><u></u>=C2=A0<u></u></span></=
p><p class=3D"MsoNormal"><span style=3D"font-family:&quot;Segoe UI Symbol&q=
uot;,sans-serif">=E2=A0=A0=E2=A0=83=E2=A0=97=E2=A0=81=E2=A0=9D=E2=A0=9E=E2=
=A0=80=E2=A0=A0=E2=A0=81=E2=A0=99=E2=A0=81=E2=A0=8D=E2=A0=8E</span><u></u><=
u></u></p><p class=3D"MsoNormal">Brant Adams, President <u></u><u></u></p><=
p class=3D"MsoNormal">American Council of the Blind of Ohio<u></u><u></u></=
p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;acbo-list&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:acbo-list+unsubscribe@acbohio.org" target=3D"_bla=
nk">acbo-list+unsubscribe@acbohio.org</a>.<br>
To view this discussion visit <a href=3D"https://groups.google.com/a/acbohi=
o.org/d/msgid/acbo-list/15d501dcc91f%246207f4d0%242617de70%24%40acbohio.org=
?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://grou=
ps.google.com/a/acbohio.org/d/msgid/acbo-list/15d501dcc91f%246207f4d0%24261=
7de70%24%40acbohio.org</a>.<br>
</div></blockquote></div></div></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--00000000000042427f064f305350--

