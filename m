Return-Path: <blinux-list+bncBDGI3AUYYYCBBUFS626AMGQEQM4ACYA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 307BFA246F3
	for <lists+blinux-list@lfdr.de>; Sat,  1 Feb 2025 04:47:30 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-468f80df8casf48345011cf.2
        for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 19:47:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738381649; cv=pass;
        d=google.com; s=arc-20240605;
        b=Sc8BKP/D2rcHjEKir0/sjK+UDruVJUPgl40MgZZJeFs6YVfhUIVTSOgf+LgWs1K4BD
         41ce6SBzvTKguglcJAMepLeFcNnla8V2G5/6RLEYqBpv9fOKJU5Vc2fh9vbmvPGwijTG
         a1yCqSGmrmjI0Z498dA8mfqcItafsda7KnCCloqH9W/mGyfPSkh1KuOMopn0cfAf5P7Z
         u+XesT0zVhVt/6wtSxGYolxQ5nOaWN1ToVTCpVP1DJtntHlHbbF8+V2qx8JigrCcc3yP
         vG1at0S4CcmssZ41Vg8pDWvEXt3ITjIMCw8zTYmx1LpububA6RwXY3d61GP6OHkx2e14
         1yPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:mime-version:message-id
         :subject:to:from:date:delivered-to;
        bh=tilWXwB98H5cyEJGTP5wREz2nDVPo6OMbsIOkd6Km8I=;
        fh=2u3rGokHxySFi8e+0/xsJdW0xURmCLP75BpBcF/AHyU=;
        b=ZCoa39Ow2zNWyVJyxw4734H1VD84HA3ceDDbARylN2bN3HkjQRMNOk9W665jDvoHaj
         LE6mewaB7nOBGtKfKxddCAuQ6KM4rFHCpy9NbRBOWKLqnSwzCNpf8gYM2RpcCx5Wzh1c
         2q/3DiePerPv0ONCYhT0qJ726BiaH9WE0xmVJuwC199cj6ZaEG8YjjIg6V0ooYjjiXkg
         vwFTO0lQkEnsQwKGyZFiwtIALUkytQ7XEVZ+uMxJHoUIn0AUN+kzSimSFR/0EcUxFZdU
         9anrx/WZVCle897G9ZBoaDBNpE7EUNQ9WxxJ8LAASkUjaIduCFU7vvStkUM1PsEswcMG
         s3dg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738381649; x=1738986449;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tilWXwB98H5cyEJGTP5wREz2nDVPo6OMbsIOkd6Km8I=;
        b=O+aYlwgF2DMCljf1V1tJeXUcnZkgPu4IDD9xaSPrLEpbUOBJVwHCb1oDr6tBILQdek
         bzdnt+Cg45df5jIXQnxhYIBGzQn22nCaYRkChQ8z/04bIYPiknWP0vpYGnnhe3yedBiK
         Je+4Mp+m4+siiApaTmZJTfNTdkBrN8lPj1ok0KeLtHfpQD4u1b1vKGf8vXZg7P0DYUY8
         tr4fDTPj65Lz3dc0Ap0G9s9Q9iopxAE5ZztA83jADdMnxsXE52/4wN28nqCox5ss5/6x
         uVHIM8rVMEC+SRb3AHrQxp2yPVxtBSzNakihwOl4/A9ETJaRSqfBVd19xAuo1l40BpXC
         WRpg==
X-Forwarded-Encrypted: i=2; AJvYcCVY8KyWiMCL6cjl+QwMcZqO3/TeBQKZ0xoEevfFq/uaqn1GVBTsO9jv7nfzkWdKjIgEWDrGUg==@lfdr.de
X-Gm-Message-State: AOJu0YyGeI00vSHsNGP2NYAjV/Q4wpFue0oGBnG37atrE7sq7ITsaR1y
	jmI5KtKw9A10cc38X39gXQyTUbNygzELQELIsf+erlLYPiqrvsLhvIDAVQy1z20=
X-Google-Smtp-Source: AGHT+IEkIpsn/gRzFAmuLs7svFxzoU4hD1tbSLHCaybZvy9vqoVUVZ+ms6Lu2WHFfUnwXVQG4khwXg==
X-Received: by 2002:a05:622a:5a07:b0:467:5f95:679 with SMTP id d75a77b69052e-46fd0b6b509mr202851031cf.42.1738381648716;
        Fri, 31 Jan 2025 19:47:28 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:8026:b0:467:68a3:4c53 with SMTP id
 d75a77b69052e-46fdcf68aa3ls39739421cf.1.-pod-prod-01-us; Fri, 31 Jan 2025
 19:47:27 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV/kwC9YtASunghKg5/MLWwd+vXdLE2RtRk02dJ9yxvG2BdodGEbO6H5HF3tW1CWsszKI3+mUA6sciPOQ==@gapps.redhat.com
X-Received: by 2002:ac8:7f84:0:b0:467:8378:9e8 with SMTP id d75a77b69052e-46fd0a88119mr165024921cf.17.1738381647540;
        Fri, 31 Jan 2025 19:47:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738381647; cv=none;
        d=google.com; s=arc-20240605;
        b=PxZZF/sKx00GHvfDxdx5OhIog7C2Iu5zSlmu5Tv5CGuNPb2TjObGtWzqkjgb7fKtY2
         ZxWgNM90H+Ab9sxlsCEN0gIUeTlvhQEIrYB5V0Cx8VBBOeY2uBxVayW8caV8/9yUWXgl
         VB4RnW92WwMxcRfNHV/wjxPSUlf0WYS/GdmJsoY3TlU5L771hPOyCd69xL69cUdcWMG4
         xrg/fSSS3X8jrSt7Jty8J6hrbbvs354dEA5IEt1X8RUAYtkWiygaoaLNXTUBxvBUHPbR
         f1CuZulNfPK/axaJrOrcnAH4FB+A6NTxQTMFPj8yy54pNXvgEuQgtIXx4HraasCo0rug
         qKTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to;
        bh=5O9Eo4Zs//4xfGHcUeg2BdHED/nNt8CTZd6COiLAZow=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=kZEGDs/eOCX2rez3vQ09jYT30w5lqjKBJXRCvKzc/O3m4CJ2bh5y75V6T4+HpFSKiY
         wLKiTGUBYcZLaOMtYFm1A2e5pdyVtIi1OSZywx5See+LpWaayrJ9qiFC8+QRSksNg/tL
         f5WJF6ancVKSca3bNoQOa8VuO9S4mZfsVDVJD0RO0wEfLaQsGEHHhrPgA1YoHzKNLM7N
         E+bMX+MU8vuCN/eNpjdJKm0Gkmva6RJR/+BbT+k+zqs70TQihjQtfCKmlI/Ly3AcQVE8
         7Xv/oYyZhSSldJvf0coSOxrVFszqe1Z1gyaD9+9jTCILhyg5LembIUvC7MzOy4lUGEFT
         cv0w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46fdf1d09c5si55513871cf.352.2025.01.31.19.47.27
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 19:47:27 -0800 (PST)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-97-grLqhvnDP0WmFTTN3QakVA-1; Fri,
 31 Jan 2025 22:47:26 -0500
X-MC-Unique: grLqhvnDP0WmFTTN3QakVA-1
X-Mimecast-MFC-AGG-ID: grLqhvnDP0WmFTTN3QakVA
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 473AD1801F0E
	for <blinux-list@gapps.redhat.com>; Sat,  1 Feb 2025 03:47:25 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 413F2195E3E0; Sat,  1 Feb 2025 03:47:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3EE271956094
	for <blinux-list@redhat.com>; Sat,  1 Feb 2025 03:47:25 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B313B19560A3
	for <blinux-list@redhat.com>; Sat,  1 Feb 2025 03:47:24 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-606-F1eaS4MKNAuWbqYO7kb3Yg-1; Fri,
 31 Jan 2025 22:47:22 -0500
X-MC-Unique: F1eaS4MKNAuWbqYO7kb3Yg-1
X-Mimecast-MFC-AGG-ID: F1eaS4MKNAuWbqYO7kb3Yg
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4YlJc94Swmz4QSN
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 22:47:21 -0500 (EST)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4YlJc94FNkzfYm; Fri, 31 Jan 2025 22:47:21 -0500 (EST)
Date: Fri, 31 Jan 2025 22:47:21 -0500
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: very strange behavior in firefox
Message-ID: <Z52ZSVy8qz18tDQm@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: -aL0R782OdsQ2cSf49jIt6Fh8sFfMPNy4Pu-PHxe8TI_1738381641
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: yr2ME3QUpLZs6ckS045mkRRJETAmdmDr5Cxj8k45voI_1738381645
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
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


Just as a test, I decided to listen to the same youtube video of a press conference
in both my Linux text console and in my shiny new gui  interface with firefox.
The youtube url is:
        https://www.youtube.com/watch?v=Jg10t8KaCME

In my text console, it played flawlessly, but when I brought it up
under firefox, it started out fine, but after a minute or so the news conference dialogue stopped and some sort of
commercial began.
  Was this my first intro to a pop up ad, or is something else going on?

  Many thanks for your insights.

-- 
Rudy Vener

Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - California Pipe Dreaming Of Secession https://limerickdude.substack.com/p/california-pipe-dreaming-of-secession
Website: http://www.rudyvener.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

