Return-Path: <blinux-list+bncBCN6ZTHZ24PBB36J5LFQMGQENYW5A5Q@redhat.com>
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGvMOPKkemmN8wEAu9opvQ
	(envelope-from <blinux-list+bncBCN6ZTHZ24PBB36J5LFQMGQENYW5A5Q@redhat.com>)
	for <lists+blinux-list@lfdr.de>; Thu, 29 Jan 2026 01:08:18 +0100
X-Original-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D84AA18A
	for <lists+blinux-list@lfdr.de>; Thu, 29 Jan 2026 01:08:18 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-894971e3b60sf12381716d6.2
        for <lists+blinux-list@lfdr.de>; Wed, 28 Jan 2026 16:08:18 -0800 (PST)
ARC-Seal: i=4; a=rsa-sha256; t=1769645297; cv=pass;
        d=google.com; s=arc-20240605;
        b=NnE4pyl/nikS3KXN/FQ8Fi4xfSojfOR8sNfuB8mHl0AgQdYiPc+Blf/GUMOP1ohyv0
         xt0Ivm9U8Y2VIzFAAivLuWYd1WQ/+hrCRbDPa12uz5V2xWEFQHyReVLhKRJrYH0A/kkh
         sfAJVFjPfml83GNiXd1a+LGwjHG3IcYKBqCpt/Chx7DAwFa6vUhHClnT2ttmTRT2lK2b
         yvg+6VDeTj5Y1R390qhhkWyjyRQgqN5GV/u2GRC/aJqft8VhHLEdj7nYKyGQoSM3QIhG
         yuq/ZODiNChpjgJBytDEoAliwcJWyNI3bRlwNzMvyDaEJ/dO6Ng5hD0p3150kmoJ/vd0
         aHkA==
ARC-Message-Signature: i=4; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:delivered-to:sender:dkim-signature;
        bh=J/EMHor9NpzInuaJgUuLr5Rb7VBGxBZ7ASxHoetZVQk=;
        fh=WII42iB0MTanR2Zc9wmLPU2Oim8PeaKf27eosi830rA=;
        b=POpyAakySZe/N9rGagNOEtBh4w+YqUYSLTndIiaEi/LZe+7jCXBik6faSpKzhlGsyl
         p2X2bTjqMUooE4c2VQ5gRFETnSNV7q4qRUgJGIv0kUXXYC/ZBSeteMHYJuDYLNJw1MKG
         tpcRKTR/oszJRPOav/2GQ6vB/8IgfX2q+v+dE6EbB6u5CGDggZbLFG/TzDcNFRj349dU
         e0A7wMu3uw3eqJZNy4WQ6sn061sn29wmgPyl3AvMtxFWVEht0+3WFzu/jxa5XCNsqrI1
         H6q7cMjsDW3XzNRDHT1T+JoBtKC3R7zxnhHWu0R6TvJxPgi6vWsIs+8LkSwKV5tSCmI1
         UYzA==;
        darn=lfdr.de
ARC-Authentication-Results: i=4; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="C/f+Rn/D";
       arc=pass (i=2 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of abletec@gmail.com designates 74.125.82.180 as permitted sender) smtp.mailfrom=abletec@gmail.com;
       dara=neutral header.i=@gapps.redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1769645297; x=1770250097; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :delivered-to:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=J/EMHor9NpzInuaJgUuLr5Rb7VBGxBZ7ASxHoetZVQk=;
        b=W4WoSUE/1erZXoyw139WBPaKp3HrLUQkpwb/DmwaZljmk+TfQzfuu3+5l8jFkYJb5o
         7mY/CIUQTmpm8eEQoIQ2fMfJQCMfKmYR+c3gS2btj9CpulYldRfHphtLilhB7GiANyDS
         PVVKNwBChREw4M4LtOi/LR/CV5RlZ4yWDTgXWIb9pPAcbnjck7VdIoaSsLPUI2Q6GQ6h
         UKdaQJ9Hq72wdwHBSodQOPgMjEZNOuxRBFDaPYUsF9ONAAhdDEqsKKDwlURZ3ueD39WW
         o+ARls+aOdPrF33jQU1LZLwuHBUTHHNw1WFFgNR7OVCGY3bCUhdd/yKsBhCebDE1acXY
         Tusg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769645297; x=1770250097;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-gm-gg:delivered-to:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J/EMHor9NpzInuaJgUuLr5Rb7VBGxBZ7ASxHoetZVQk=;
        b=Z1a82rL/Vy8oiJcJvGTuIPkzb9m4i2IhXstz2JNUvLT1x/Zdf0GV1WHT+H8/AhmZxr
         pouhvy3Z7B3LDTDKNYCkC1gvO2CghWpXbfoYmpV6s+wAvCMO/Db9K4n6+/pcmX2h+uxu
         JUgLOIF/Ffo7CeM7ZDDsz9ZLNzFxhgp6VGRnUCkMLufeXCd2lWY8X/JV6grjnWh9YQAx
         WQmWQN2M8zST4ewxpnPHo4W2CsffmimCghdJcVe+F1lhNu5xmjex84XMZjokTl+pWlVj
         odJh27PqoEKyOBCvAHBIfpU49SWYoaqtY5+R6bANS8RvlLjL0l0Qdc8q1KTzTzsh4AM6
         rbhg==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=4; AJvYcCV/a5NdHcat76WXyigjx9PQh5Ie2/QFPxOXcHptBfG/s2Ryi0UvJrHCxsMViLr6wrL5XY16GQ==@lfdr.de
X-Gm-Message-State: AOJu0YymbK256bD5uRBQxoe81zvOY57FwbmWKhkTMWVmcAwE0RhXWQEk
	XnntfaLGiqIEsnfSe7lovAqD+4WRGJ5tXOfrRae/1VvtgrWABIxImASDkBM34xkr7Rs=
X-Received: by 2002:a05:6214:1d27:b0:894:61c8:930c with SMTP id 6a1803df08f44-894cc7e732fmr101278446d6.6.1769645296367;
        Wed, 28 Jan 2026 16:08:16 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AV1CL+F1etxJPimKug2wWqAsYPRG7af8wVt1cRm2vjEK9bLvnA=="
Received: by 2002:a05:6214:528a:b0:882:3acc:d7a with SMTP id
 6a1803df08f44-894e0b2c14fls2798186d6.0.-pod-prod-07-us; Wed, 28 Jan 2026
 16:08:14 -0800 (PST)
X-Forwarded-Encrypted: i=4; AJvYcCUIYAnWn1Hc7TMxZxVn8Awzcegp64zgEXWbNMD/0YCojCPKg0qqfyl+AGPXs1xWGFh4omRVro3j1zLdEw==@gapps.redhat.com
X-Received: by 2002:a05:620a:701a:b0:8be:6733:92ab with SMTP id af79cd13be357-8c70b72de06mr939076385a.0.1769645294580;
        Wed, 28 Jan 2026 16:08:14 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1769645294; cv=pass;
        d=google.com; s=arc-20240605;
        b=GtnK4m0n8b77x2XFXnQp/rg51vhBZBytcb3BQxo1gpip1G0uv5VO+XB6FrGOBxKGQZ
         tNRSGOlYk6tcCTUnMq56E4hjJ/MM/gJTbAL4us2Jp+Y0F0ZSv4hPhJ1oYa2pM39u65pM
         bxcm7nG58mUgBZ/VZJqQdPrOusHxwpUGR+INSGRVcAUM9pBX05Ew5IPEbfk2olbERyEd
         8u2JhZ+OZ9XaqMYISL/4MEVa6AxDS0G0rBe2YFmaFMNsqQw7QoMOztgjRRoZ6ZI5Tto9
         XScxk4lIv+sjNY0pA3mW8xv9wTPtALpB1ey/bTHjfFW+POkXchZfmy6uRhHLXgTz+Z98
         C+5Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature
         :delivered-to;
        bh=X3cAsoLklf2kImPgTJ+GB+02znHTE9B53n9aMh201YE=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=AgPhMZjLUhaGjXu+FuDN4W1mFj8YDxar0uu46QCR+zVGNIDnzMm1l2fyOz8O5EpZSQ
         5y/xcThhMx2PED0dqH3weyn5TRXEWp3fv711bxlMyEm/KVr0Q4CgfRENCLFeAC8JqL+K
         8cEVaA3bzg0RSMZ6Mgk/vMPLIFQrezSZjwb1njX7ykdVTMYqOVMHl4bt/UkaT/60hUFn
         XNODOBaffELQPHo5BAS6p8wrDutCHzIVzb6SkyY/dZtrgqDD1+N49GrLxCyskCFGkmnr
         Jr1H9OiqoDPoGOY+C4BVf+dHHkoQOzGf4QTodQhU7rWgflqFnXQRmJMfyMHb2Nv30Fm9
         Vo5w==;
        dara=google.com
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="C/f+Rn/D";
       arc=pass (i=2 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of abletec@gmail.com designates 74.125.82.180 as permitted sender) smtp.mailfrom=abletec@gmail.com;
       dara=neutral header.i=@gapps.redhat.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-8c711dd5912si412007285a.538.2026.01.28.16.08.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 16:08:14 -0800 (PST)
Received-SPF: pass (google.com: domain of abletec@gmail.com designates 74.125.82.180 as permitted sender) client-ip=74.125.82.180;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-117-ssi1f08_PX6WAyaSvV4PrQ-1; Wed,
 28 Jan 2026 19:08:12 -0500
X-MC-Unique: ssi1f08_PX6WAyaSvV4PrQ-1
X-Mimecast-MFC-AGG-ID: ssi1f08_PX6WAyaSvV4PrQ_1769645292
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 09C461956054
	for <blinux-list@gapps.redhat.com>; Thu, 29 Jan 2026 00:08:12 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 0466E180087B; Thu, 29 Jan 2026 00:08:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 016FE1800870
	for <blinux-list@redhat.com>; Thu, 29 Jan 2026 00:08:11 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 61F6E1955D80
	for <blinux-list@redhat.com>; Thu, 29 Jan 2026 00:08:11 +0000 (UTC)
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1769645290;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=X3cAsoLklf2kImPgTJ+GB+02znHTE9B53n9aMh201YE=;
	b=HN+iexFQOFzVaAtKxGGZWzCN0IiOwBRjNAu9wlCVqKB3pjJxaXnHFApBc17ICdiVE64HzS
	rd+Qp8xzdNEYYjtf0q0WW6uacItVPDxLGOo6P/mVvFP5PUiNgMpxuoWCJ7rNnZEePWvsQe
	QXDKA8aHxwhyhHkJQrBTDEh4tBHeo71m3CskstOoSZxiTS0Y8BbwwyS8JiXo2sDS5P/k70
	+X0i1K3OfZrwkwZLE42DvLjx9XSaoqK83yWVOL+5syQzFtZZjDyAi/4jTWGiaYEDnvrm4e
	7t9yjIKQeoVfFqNOb+0V72uEVzOJmYWVrWGlayLYw2tvqGXEfR6YQHWUQ/aRSg==
ARC-Seal: i=2; s=201903; d=dkim.mimecast.com; t=1769645290; a=rsa-sha256;
	cv=pass;
	b=TblF/wurFNOOC1cYTstnc8CAroWwMZQVxDASODWlRNAn0F3F6N/UkLOX60CdngpdkGdNZ+
	ZoVnZelj7hQ95Kjvc1s/FlDTYWDw+u1bo3G2LmeYX7qpbF8zruf4jjc3uRf/MLdVKJxGKD
	rDCZJMwXd9xW6JQ72FPViBojmsCoqS51MtfnUg4M0eN4jlTN5JQLSeDzqCpCpMYBs236kk
	NdBSoBzw4gdimR1hxtudG8q1OeXgnexovTBdFcfnW3pckcvH+e97wgB2rpTs/GXHXnPB1Q
	SkqNRarTtuX2YMQxBI4B9ehAKoH4k7P5e0kfDIyx8M7P+qNmZ1j7w5dvfnxPKQ==
ARC-Authentication-Results: i=2;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="C/f+Rn/D";
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of abletec@gmail.com designates 74.125.82.180 as permitted sender) smtp.mailfrom=abletec@gmail.com
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com
 [74.125.82.180]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-368-w64I-uc1NyeNlO6bUXNToQ-1; Wed, 28 Jan 2026 19:08:08 -0500
X-MC-Unique: w64I-uc1NyeNlO6bUXNToQ-1
X-Mimecast-MFC-AGG-ID: w64I-uc1NyeNlO6bUXNToQ_1769645287
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-2b1981ca515so632557eec.1
        for <blinux-list@redhat.com>; Wed, 28 Jan 2026 16:08:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769645287; cv=none;
        d=google.com; s=arc-20240605;
        b=cHqn4Fe792VXWWvNjBGY3WxXy3n2x6OAhGHLCprN6yN1wcBYtmQ6293GKUMpt9B/1t
         OTUe4s4uiD1DnBLptjFegnY0qdbABfgLRvsQ/v9qtG0VEqSw2xKEo8kyFLhUeFv/NWQM
         zhGgtZth5p1IUmCl8l7mxVcn4joM/VPCn3NVAj4VUbv8vzhXxDy+Jbenf9NT/pzp8Uyf
         XXykcMZcBqUyoLL9pNPfIZJABAYDJzEhHoEP/GgO/pElcFXazFbfp57UZ17a1u944sO8
         QXZnxtDh/z9gODA3uhscPFyMxI/sTnGm+TZbK9BlZKvb/LoDyiWAaPC4g1cEW5nm11C4
         FILA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=X3cAsoLklf2kImPgTJ+GB+02znHTE9B53n9aMh201YE=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=QKGubpJutHHyA6VPmJrECrE9BJvQ0CqT95Yfq5ldKSu18F9iiXduxK4yjZ6zK5OrHK
         7QgtVYNXifTBZp60s4iduBpr4oMamf8XtkND0Sdo6ccMni68MqPJ/t+XdBbXKlIb1z5x
         62hjygP308LqFtjYI+xzXt1sDCXVPVHIYbSeE4ph1xCo0m6Z14QDkBDt4S3LUR7Jov5W
         51dDIZQwOfHREagv5mFaYklpzAdaCHK2/S+RA2UtRGi7i7RJGOOCOjC0R8Jwt+UIdQP3
         WmYDO/6zSG7KYuhyaCZFZsNsU3n2mEyRk7X9ZLuSLo97OZ2Tu3ipxu8bq2lxnRURyk2w
         IgGA==;
        darn=redhat.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Gm-Gg: AZuq6aLL0J0y4cAdt0ISrNs/DBle1r40KN01idzfaNQQd737k3dtRu1xc3iHnHS3slM
	npHqI6L9YcuijMXzxMIAUuLpGRk6ba0SVwhg8y1ot+zvVgn78090CPyWoxR80Ig3ByDwGtBTs8y
	NLmMrevOEK0j4VPUakhcdUYcjWzKVH+Z+YRjAtIK+fA6IczQFlwDHK2uEoenK3R8Bl0WfChQDav
	k7B2y5BW/d94QlzukSJT74dfIRNRA5/Uig/PMAFwDCaJWG7gtwkCdinJcbaInKOZNiPaR5D1U0S
	DFKZi/XclTcLUeYrqfSkC89JMWV9mXSKzcgQa1Rr+xvP7XPijYsthjf4mhcHZRkEXif2+3HqFBf
	Bf6BFyk8Tp5Ex2q0=
X-Received: by 2002:a05:7301:4592:b0:2b7:2a75:a991 with SMTP id
 5a478bee46e88-2b78da34f90mr3763863eec.30.1769645286603; Wed, 28 Jan 2026
 16:08:06 -0800 (PST)
MIME-Version: 1.0
From: Jackie McBride <abletec@gmail.com>
Date: Wed, 28 Jan 2026 17:07:31 -0700
X-Gm-Features: AZwV_QhFGAacN3C3bFxfEFnHrzQ_rpym5D3mDUeys3jgXtlwfXDzJw6QxDpIgoE
Message-ID: <CAM+Q2c7c+M3ho66a5Kq8R_DERW_G6WPsUvrTkNovhEKWqTbBBA@mail.gmail.com>
Subject: Sad
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: AFRB8w_hAne2S5tziFKcNH9tFsYvq0prZd5Hxgepq-c_1769645287
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: multipart/alternative; boundary="000000000000afc16d06497ba6ba"
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Original-Sender: abletec@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b="C/f+Rn/D";       arc=pass
 (i=2 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 abletec@gmail.com designates 74.125.82.180 as permitted sender)
 smtp.mailfrom=abletec@gmail.com;       dara=neutral header.i=@gapps.redhat.com
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.61 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=4];
	R_SPF_ALLOW(-0.20)[+ip6:2607:f8b0:4000::/36];
	MAILLIST(-0.20)[googlegroups];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=google];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[blinux-list];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:2607:f8b0::/32, country:US];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_TRACE(0.00)[redhat.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[abletec@gmail.com,blinux-list@redhat.com];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[bncBCN6ZTHZ24PBB36J5LFQMGQENYW5A5Q];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 66D84AA18A
X-Rspamd-Action: no action

--000000000000afc16d06497ba6ba
Content-Type: text/plain; charset="UTF-8"

I just heard that Didier Spaier, the author of Slint, has passed away.
We've lost another champion.
https://lwn.net/Articles/1056384/



Jackie McBride
Proofpoint Certified Email Authentication Specialist 2024
Author 36: Last Hours of a Life
Be a hero. Fight Scams. Learn how at www.scam911.org/
Also check out wp4newbs.com brightstarsweb.com mysitesbeenhacked.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--000000000000afc16d06497ba6ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I just heard that=C2=A0Didier Spaier, the author of S=
lint, has passed away. We&#39;ve lost another champion.</div><div><a href=
=3D"https://lwn.net/Articles/1056384/">https://lwn.net/Articles/1056384/</a=
></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gm=
ail_signature"><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div d=
ir=3D"ltr"><br></div><div dir=3D"ltr">Jackie McBride<br><div>Proofpoint Cer=
tified Email Authentication Specialist 2024 <br></div><div>Author 36: Last =
Hours of a Life</div>Be a hero. Fight Scams. Learn how at <a href=3D"http:/=
/www.scam911.org/" target=3D"_blank">www.scam911.org/</a><br>Also check out=
 <a href=3D"http://wp4newbs.com" target=3D"_blank">wp4newbs.com</a> <a href=
=3D"http://brightstarsweb.com" target=3D"_blank">brightstarsweb.com</a> <a =
href=3D"http://mysitesbeenhacked.com" target=3D"_blank">mysitesbeenhacked.c=
om</a><br></div></div></div></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--000000000000afc16d06497ba6ba--

