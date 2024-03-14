Return-Path: <blinux-list+bncBDYPVTOXSQEBBN6YZSXQMGQEY7NMK3Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A3187C192
	for <lists+blinux-list@lfdr.de>; Thu, 14 Mar 2024 17:56:24 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-430ac6a7aa0sf3250391cf.0
        for <lists+blinux-list@lfdr.de>; Thu, 14 Mar 2024 09:56:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1710435383; cv=pass;
        d=google.com; s=arc-20160816;
        b=hcZgdH+adWNaR3Iam89rbqutxyHBbLlAbEEQi2KI6lF6JcfETmpL69q7b2dEv2GudV
         UaHdXw1aNRYsglM4RgXOkf1hNdjlLdzmKQU/giyT164j4yQHiR1qo5uyrqUSGK9opRXD
         ktb+xyZhAMgB7wNJV9MVHmhOOWQVbtQX7HUJfXMYOPDU+4l+nEIQCPONI3YPtOoTtYK/
         sz3RFXzZM5yHekAAYKtRf9l/KdGYGh7QWz+kTPJxAy8aK0OkHCJqtKRWVnvVa2WvA6KW
         mq6clB/Ly5CLaQv4SYwKObBcW465a7dEGMTCjDURZF0fuuYDTYENoAWIAUp+JCiZtBfs
         g51Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=1dTdG6GWWugvAD2WJJhHHSykeJ5s4pON1TXV24Nahdc=;
        fh=gRGZd1gJNxrxa4K99DeN0ZSkkWnroJaPmWO6q4KraJA=;
        b=qhY60/SZPuGXuI0RenWC3X0Ct/gQ9M0idO3Go/qjsgKHH0aAd8cKClvO9/nlsw4RGa
         IqI7B/O0mD9nKxdgG5hBmN7/A8tyCklm6WhmvtM9z2tqX4glWP0DNOht3FTlDrjtlHy/
         Fkn6tJFrr+P5iNCO5zWBwp0DqQvvL5XZB0kFfOjxtOWfIth/KOLXu/r37XFV+vyoZcgX
         AVhWEYzG7j/yZq09zLI6UZ88eEKbkW41LttOX61mYz8t11STEh0JcAsB86NE3l+Aa+gW
         0xkTzrOr3uKQes53vEdAE4LnrEqg3zTB7vuDGmhQGznUGXqCLI9ur9r2gvYuWq+6JxFC
         1e+w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710435383; x=1711040183;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1dTdG6GWWugvAD2WJJhHHSykeJ5s4pON1TXV24Nahdc=;
        b=vbT/BwJTc7rj2K8JvXkXsr8R9MNypNsmpViVmqT39ldxrNaAZbdcLyn72BtguVvAR+
         TSaRgcp1bBSKcjUhDkQ84xMeSnVMH0PhivRMLA1dW3mGJ1Sr1ckI2UcTHg2xTsike+Rv
         GxvKFIToKHi69hQw3BlWkoT/OrkueXTsEXbZ3L6QngKMK/9udv8EXb5Suxt+8wMJjtZR
         C4/kTR7YPE1f7JBZH0fuibmmCpLB2U7AS7BkLnIlo+WmYXbrRFUTk0c+mQnF+dKN71xI
         Z/zDspJvt37dIlzd5sEn56hXE5wmOwYzVdAvjYfiWH4c41rTbJQYOh8SNSitic/fiTXV
         Mp2g==
X-Forwarded-Encrypted: i=2; AJvYcCXFTShNeVH7Fiqs8BsV2g/cspyjOseZAtxSbFvvoNN6iGyzI3lyNtb0TYyP6BjSfYW6zvvFDE9nP1iFgPVAI4gthzGMJEV5S+kd
X-Gm-Message-State: AOJu0YyN7/4V6+zFsG9eYP8QX9BwXTpLba4K/gv/GUyos4PBx2bGeCUU
	Jt/pGttijMab2vvPDzj83yP72KRaTuPJvOe74+t0VP+TEpKkQWT279K0BLrNnbM=
X-Google-Smtp-Source: AGHT+IH9KSixACvUMHHedkIOqLClZqpCUyOKYMHOdExi0DKNGo+lmcidoiBy8ua0fEVheuID3W9fhA==
X-Received: by 2002:a05:622a:1006:b0:42e:9255:2631 with SMTP id d6-20020a05622a100600b0042e92552631mr3403032qte.28.1710435383205;
        Thu, 14 Mar 2024 09:56:23 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:191e:b0:42f:512e:fc4e with SMTP id
 w30-20020a05622a191e00b0042f512efc4els2062398qtc.0.-pod-prod-00-us; Thu, 14
 Mar 2024 09:56:22 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUkpTn9UgCuq6esXMCuoROVznd225y06EuAFiXyYuZcFCxRh4Wqxm+FkMrKPSLXuhQsIcqBnEWp7FqV/BLpwY6sutgIDjtWyHWupbJC
X-Received: by 2002:ac8:5846:0:b0:42e:ed29:b24b with SMTP id h6-20020ac85846000000b0042eed29b24bmr9155370qth.1.1710435382384;
        Thu, 14 Mar 2024 09:56:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1710435382; cv=none;
        d=google.com; s=arc-20160816;
        b=rFKSccNt27Lnj7yU9U6a6j6gxpV6kTzPPev3bcwTHuLMz3sR1MhVIt9sHv38H5FeFJ
         LHFV3rJpOmNf8V4MMUqL1Ttk1w7Xzzvbv0P0O6M66qOaAlLbbIzCifGRfVLZsNjGs6oh
         d72JWTdxlF8ZoiSMfjT04feKXsXZGc6OktAcBurzqr7eUCN1z3nXzSkJBvrhDWbNPEp3
         qs7qdFdHb+aIDk7BpYZppbki+oTHuEo+gnd/yu2CxZHPE0nO9mWHSQv5Hbea+kEadpVD
         jGxynJVhhdxt2z+tVN57GwQddcISciXgEJXcRCyPfppMPYOQgtZ0nhzH2RZooHc8wkBD
         R5XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=kepLIfOmHWc1vp8kt/wlxykCgbXeR1TbrWGAwwdkbzg=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=OcM1qh5ZFigJR3UNW4d9kThitenp+jorFtrfY4tQCvrf1jREp0mVSxihBw3l3Mm0EI
         MA9II9WEPDxKhxrwqSBcoHvqd4Q4kbKV+5yHaYk1oy4voCFosUfGB8QF2BbMn2Qg3uYN
         Sy0Wwhzi4GZwuSWxnYfTg9VNdnIK/AQvar7V0ye4ItkeLAne6CUdixkNa1zgobOCOvMs
         ylFmQBsELVkNdw0Dl2x8OoDKb3qr00KjQ4PAmaWoMIchKHyGfxDEo1nfDD4W0otyhlBU
         BVdlQ2O6Jmv1sX305d9mF3tp5BE1+EwpZQJ3g2UttnUQ9DlajRMiThHr3aGIkk1PCAbP
         N9XA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 16-20020ac85750000000b0042f5196365bsi1908136qtx.47.2024.03.14.09.56.22
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Mar 2024 09:56:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-612-VAtjjjdDPLGO3_UXOLUGmw-1; Thu,
 14 Mar 2024 12:56:21 -0400
X-MC-Unique: VAtjjjdDPLGO3_UXOLUGmw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D78DF1C01700
	for <blinux-list@gapps.redhat.com>; Thu, 14 Mar 2024 16:56:20 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D4B25202451F; Thu, 14 Mar 2024 16:56:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C1032024517
	for <blinux-list@redhat.com>; Thu, 14 Mar 2024 16:56:19 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B2FB8101A552
	for <blinux-list@redhat.com>; Thu, 14 Mar 2024 16:56:19 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-136-6jkAZVJRMCymWZ2od_RAuw-1; Thu,
 14 Mar 2024 12:56:17 -0400
X-MC-Unique: 6jkAZVJRMCymWZ2od_RAuw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4TwYS13qSvzrQ5
	for <blinux-list@redhat.com>; Thu, 14 Mar 2024 12:56:17 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4TwYS13YQFzcbc; Thu, 14 Mar 2024 12:56:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4TwYS13Tt2zcbC
	for <blinux-list@redhat.com>; Thu, 14 Mar 2024 12:56:17 -0400 (EDT)
Date: Thu, 14 Mar 2024 12:56:17 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: re: fenrir only runs as root
Message-ID: <933426d1-2059-0a79-d0a6-fd5fb7926310@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 1
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

go into user account then run:
/usr/share/fenrirscreenreader/tools/configure_pulse.sh


-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

