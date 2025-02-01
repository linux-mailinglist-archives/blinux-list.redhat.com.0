Return-Path: <blinux-list+bncBDGI3AUYYYCBB5ET7K6AMGQE5BQG4PQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B02A24BD5
	for <lists+blinux-list@lfdr.de>; Sat,  1 Feb 2025 21:54:14 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-46790c5b1a5sf7416181cf.2
        for <lists+blinux-list@lfdr.de>; Sat, 01 Feb 2025 12:54:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738443253; cv=pass;
        d=google.com; s=arc-20240605;
        b=HRUkWkzl5HdEELL9z1O1af6JjiamKtCH58Nfnr+TYa4Tpz6guCTT6ZqKNqsYlqJ8hJ
         XUheT60pKlzASQziLvnc/bDnHTcGDNQ6plAz/aQlGhZLpkXHU0ZyrLCC8ZIBtJNFSI2c
         IQEHSeRZLPTTrrcqEk4vNYm+lRcdzshBVvdiK7f0JG8JM5Cofw/+Gr+0x62yWOHGOReA
         FlqiO9AMV/DA7424oNCkRfiHdwWSNBZrBFdXWuFFWKXC4sztQP/2kawYi3skCN7DtsuO
         2OCvphk1IhCZb0YX8QVWzkpfMsWJk29rzT3yHO/tIrstNjcTzYJJBpZD3DHkDHFy8g1w
         8vpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:mime-version:message-id
         :subject:to:from:date:delivered-to;
        bh=a2FsrkkE45jQh8ngkTAq3nDLjIO83ptM9qkkyBJ0Re0=;
        fh=PfewzxDslaa9grbLULwuNBTWXXSws48oVD8ktr+YHwE=;
        b=FMrXBCiYAAvIXji8K0YwUPrYbyp+p8vNc50mXneBem5CUqj/jt4PmM/XcnVvcl+A/g
         pCZFwWAyRbXMdwjBqh2JF6PyGRdDayPVs5ElKeT8wxfC7scPG2UuaIFk+h4MyWFTK5Dr
         9GqFabs7CQzl1YIIWto3rX8W9j0dSBPvWc4ABEMBNij4gefPk/jycEGmS/HFE3guQjbW
         DS2xa1mr1niNootcwmpssxdFOER2HtA3lQqpvM+L05/TC0iSMa3Kfj6ymfCyEx+RBo9R
         gy09QxFXHvutZ49lRASMqlVlOKfD3tyXC+DookZpjE6mdugjD/vxmQF41mZHEW3oFsdY
         eOEw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738443253; x=1739048053;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a2FsrkkE45jQh8ngkTAq3nDLjIO83ptM9qkkyBJ0Re0=;
        b=d1KYMSn4gZnADSL4skcH9RiJR/EkPBCA2rTo5cZZLaw/p2xGUi8LlSmfqfvc1fl9j+
         kIXTQUgd2JWH0hVcEOUDTVIs3l5jTn/qTqI9Q6u01djr6ueNDU+DEZOkAGJmD7z8G932
         zSs85DrkPT3Y6quaQ7hh8b8eeNm3/4wnLCAZzUzYn19XOVia4fyKF51LRSZnX8cPF3z8
         ++1BC7E6sQmDth3YoV560HiHN+6TyeJDhGtngwIQLMmKbahFIPEbeHXeMIbmLLdQu7XA
         didEjy6koYpTCBTmRIlwKl9P7QFhc++6nVVTsucKMAC4e/0Kg+uDK2FKalxwsN3aXUR2
         fUUA==
X-Forwarded-Encrypted: i=2; AJvYcCUviAiXABr64QPoxU0Vo9Mad6+mu6VkO8A2TxudjRrd8g1L1R+ZOI9Skr3gXwJyDEf2m8KqMA==@lfdr.de
X-Gm-Message-State: AOJu0YxGqzRmXBc5wv5iqEOMkz4B52HmkM3XcOb1BNIACyM+WhIrtH3f
	7fgHAp9Hl+VD2MyEKJjrtALHiAwO+WuLnt9eMuNfg/F9WUHdzvFhs6aei4WZ+OM=
X-Google-Smtp-Source: AGHT+IGaDi7ZVpAt519vXNlfiIGIZoWoBiAbF0yMt69VYjnJFmHIOZxM+U9bjHIQoqrp5WvnEvK5Mg==
X-Received: by 2002:a05:622a:4296:b0:46c:71f6:848a with SMTP id d75a77b69052e-46fd0a7fdecmr261901281cf.1.1738443252791;
        Sat, 01 Feb 2025 12:54:12 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:608d:b0:467:5ee5:b23 with SMTP id
 d75a77b69052e-46fdcfa4c77ls6274931cf.2.-pod-prod-06-us; Sat, 01 Feb 2025
 12:54:11 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXawRku738Xn8fFYBBsEVIErXfMDQ0jTz4J8GvmJ97myt1oVSc1OMRCXg7UXpcUAWO1QFWN/Mn4gPvNzQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:1721:b0:7b6:d00d:108b with SMTP id af79cd13be357-7bffcce85ecmr2307580485a.19.1738443251595;
        Sat, 01 Feb 2025 12:54:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738443251; cv=none;
        d=google.com; s=arc-20240605;
        b=M494Xssv1EtJf6VC07OlBeOnBajCOSzg61GWxbvC+bJRRADiXf0UC+u9MoGTaoHEoJ
         1mptxW/fdxOMITzuBGq8zlWqz5EMcBvJkcNixBZmaG8YGN7ZPNEbnmfL3UPP73eWTc/k
         oAlNLKeyJfuR4ATSiLa+nJzYlSsFosf43rrSzhwEtvY7OAHw9CiHhQGv9ivf+Eet8tpi
         WL7xNFSAWMa+r7AdH58UVh3PKOVfglL1J9rFXUSn/I08jqLinS4to53nLXxrvKkQN993
         5HOtsJDsebBWQWGeVDisIg9+yQcmOLw+HT9WvybaWp1jnNJLZEEWMSqk5wjVvK1NohXA
         mENw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to;
        bh=LVqnS/bdLK2uFDu+78JLZ4/cnk8E3hfDnb/UHlxoN4A=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=VRPMaBio6SheV086Rz7gxCLl+IxDwmvhIUeiOx8LNsJmNIwHNxcclsLTzgQ0mqyFzr
         gdg1ytEs9bXsTRvPSNOnXNW5bQZQst9JlBejywcmex5+LIYCHRXtQHdB/qgdwPMtgsf1
         9cxBfrpIyEdUuX3tzWZr1mGHzL3xciW3MUTx+lECmzi0oXBS6temmnnoK5qlSVDxhLOx
         Sc61p/LQmonMBrTqfOZx7HSmjZVJ1QgsXWAxXtSKW6MnHYpY9mnnn7kjv++AClH0O7KP
         w2j11UIu9HLo87GmNthcaSmG4yNfstRPFJbrxcLJkQMKWWhDjHjeeQgdm2JV7tv4aFny
         iZ0A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7c00a925861si655824285a.572.2025.02.01.12.54.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Feb 2025 12:54:11 -0800 (PST)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-569-oZF55b2-NsudjlacUbCy4A-1; Sat,
 01 Feb 2025 15:54:09 -0500
X-MC-Unique: oZF55b2-NsudjlacUbCy4A-1
X-Mimecast-MFC-AGG-ID: oZF55b2-NsudjlacUbCy4A
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F2BB119560A3
	for <blinux-list@gapps.redhat.com>; Sat,  1 Feb 2025 20:54:08 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id DAAB43003FDC; Sat,  1 Feb 2025 20:54:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D74EA3003FD3
	for <blinux-list@redhat.com>; Sat,  1 Feb 2025 20:54:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 59D691801F13
	for <blinux-list@redhat.com>; Sat,  1 Feb 2025 20:54:08 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-177-gJN0Dly-PWiGu-f889gJdg-1; Sat,
 01 Feb 2025 15:54:05 -0500
X-MC-Unique: gJN0Dly-PWiGu-f889gJdg-1
X-Mimecast-MFC-AGG-ID: gJN0Dly-PWiGu-f889gJdg
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4YllNr4sKRz1318
	for <blinux-list@redhat.com>; Sat,  1 Feb 2025 15:54:04 -0500 (EST)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4YllNr4bS2zfYm; Sat,  1 Feb 2025 15:54:04 -0500 (EST)
Date: Sat, 1 Feb 2025 15:54:04 -0500
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: firefox tutorial
Message-ID: <Z56J7O6Qoj2TZLhQ@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: NG_izi3pu4qjJE6yyIZATzgczFrXsOsbt2wC8dPv7Qc_1738443244
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 4s5VWk5Hs6Qg0rvJ0nIJ0_UL1IufQcVqCDGzWhOEppg_1738443249
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


Can anyone refer me to a firefox tutorial geared toward blind, screen reader users?
Everything I've found so far keeps talking about buttons icons and the like.

Thanks.

-- 
Rudy Vener

Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - California Pipe Dreaming Of Secession https://limerickdude.substack.com/p/california-pipe-dreaming-of-secession
Website: http://www.rudyvener.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

