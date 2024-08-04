Return-Path: <blinux-list+bncBDYPVTOXSQEBBHPMXW2QMGQEKZS5M2Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 3671A946EB7
	for <lists+blinux-list@lfdr.de>; Sun,  4 Aug 2024 14:37:51 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-44fe1a88f85sf136802011cf.1
        for <lists+blinux-list@lfdr.de>; Sun, 04 Aug 2024 05:37:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722775070; cv=pass;
        d=google.com; s=arc-20160816;
        b=w5LsGM3NzmIMGXEKnnD7xuprPcUHAvncU6pR6USRg3b7jB45PgvdcVvmrqITnDGUGy
         GrEdDVABAH2zaWEZOjs3V6atxpciLSm3MxHaa3lSScEj1kKU3/XBgoNwvfSBdC+dFGW0
         UQDy9mfP8zb1UJ3KiSmMbXanJGcsCNygE1P8dN5DymarlLh5oLxKzdkoZjSZ3QZ23yl9
         WYhh5EkVhJd057qu4Q6BWrVW6uMB4kx5qjDglaBGC3pLgEc7GQsRjAxPOMdiws7H0aTK
         pOHogIDrO0Jos/KJZvRz518wACHzBPXktml9t4JXGOhStvV8lnrbWw1pPOwuQBH7BLz/
         0JcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=kPSv9iPRXuw++y6kDguy7ugpLsD5MPh9k8btoO7XxYk=;
        fh=n/+7PntBAvWHUvG54UIvv5QLcHXdbDPxXPhTEGkVyvQ=;
        b=hxI+bQUG85HMoZ6ely+Qdl3SBALpTZHOqfJXUcyQJe2SMIQwJ2faHw7Jk1jqtObWnw
         02Paa1wj9sTGPL+BZf7+A7zpTerlSJ3PNtxT12hAgT1qFkyX5foozpZ/Xygdo45un9P7
         VCeDH0dn3UcWhgaB6LcLiJ5g5FBRXLNmDUVgL+VFt5lD3LnORbe9gok1SW0lW2Xhxkug
         ZHfAIebh1F4Gy74gYHBQLGPLzi7b5qBgG2azwdpQhgis7RQjmA78uZCZx5qN+ToMbS+J
         rtZDdWDSlDtiBuNNCGxnd3hKMyGHVnOvSM9M9V/GRB36UZrCCR2SpwBOPDz8xjazE1t2
         juiQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722775070; x=1723379870;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kPSv9iPRXuw++y6kDguy7ugpLsD5MPh9k8btoO7XxYk=;
        b=D001iSyAncQ2GONDwoXM4yVPphlPkZDfRxfJuGc0LG3qep1YxuL2wG7zGIBBCLAXxl
         Uo/oug3ElDE/C7pqqeKFz/0VCpqFpLIOST5ru8ZBM4IwTavIeWKEzMiC3/FauEgVIBmx
         c2HEKhjRaFlh3xTfkwts+AQyuCXEnWYBsOp+VdYj0mtF8L9ZHaoYbRbg2EKDf8TVcstB
         8Xr4mZJYd8bqdZ52cvi/fv2gxh+Apu8ytCnJkn2rpH8J+XYJII8jmZrPvomJ6Tdis6eK
         QIRAg3aYqHt3aSJQeyUamcV2GXLAadTXatpp9y0tLqecnSsxzf/DwFBgO3RaVKdy4lmF
         UXqg==
X-Forwarded-Encrypted: i=2; AJvYcCXJxyhm9rFvUW+2aA6h2VCCtdOIoYQmYT4GAvPcVaGBRkeR4/yAsjvPjvPfqVgj0e/FqyTa36AsJzoMgeNRaYGdXFYhVaDk5P5b
X-Gm-Message-State: AOJu0YyvaK2Th6TPMfAu0bg94kvJc55g8dganWa1yBinRjSX8qSAGr3j
	Q5qO+f1adycap/odVZ5B3kb0qZSTf5gszcf7IemBPsWh+E3KhgKfSI8PXtEIi24=
X-Google-Smtp-Source: AGHT+IHvBrJsnamqEf7hdW4TRAZHiomg0VWE3deyDiHCc3SwXqaxGECXyTh/NO+lmHH2hdR5cf9deQ==
X-Received: by 2002:a05:622a:180b:b0:44f:f9ce:25df with SMTP id d75a77b69052e-451892945d3mr121775901cf.46.1722775069640;
        Sun, 04 Aug 2024 05:37:49 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:57d2:0:b0:447:f242:15e1 with SMTP id d75a77b69052e-45197601f7als22972601cf.1.-pod-prod-02-us;
 Sun, 04 Aug 2024 05:37:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWmnYENHlYIr27d8pJgUHJSnx9i+9vQqpujxSPc/31HUXQQDWXlyaAW4g3gZZIodfdVAUMB7h333AVxEQaTVb6UqMM1pLuVBZ6KOHKi
X-Received: by 2002:a05:620a:2991:b0:79f:1828:4279 with SMTP id af79cd13be357-7a34eec3088mr1106195385a.4.1722775068508;
        Sun, 04 Aug 2024 05:37:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722775068; cv=none;
        d=google.com; s=arc-20160816;
        b=yj6bfYBZT3FVuw4WH6Nvnr51NatmqpOCHrXmVecu5xVsioFgEdy26kG2yiz9vAY7tY
         MU7sb7W4LiN+fdlgeCD/oOkU/Kajl43nM0Clt+ylTbgC8jAfhrnXbbmhnA1hIVupdek7
         ZldPT7K3iWLEGpR5VW/YfqGsLq2NqazQxyQhucGclB2BqoVPrQ8iW2Fvw7zbF2elA9re
         j3OciGZ3sZlReLymRbNTyGiUcwtDSDPXIgUXF7E3IQxB82i3KNnhoylevPq0hB3LkAZo
         P1i7IYeZv54LY+Mq64XC65GSq9UGoLD+mNve5qneGAWREwRWCb0oK86wUG2+CXZP0Dic
         IQuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=BtPRYhm/irGoqpAio1uNgFkYQL79/GB/49xfGbE6d4M=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=MVtoZBVA54T/eFLcMdrY7XKKanZUfHStJ6sNq8GQ3E3gK+m5DBNH4ryFxtZwDB2VXb
         nGF3rz/NkgGhdk63gU3jlE/QPS1P8NDpUtZ05HXr07j8shctnxBdPW7V4/klwaXK25r4
         JJVpivFGUYPqpTfVvZIC9WTJa79eNeMLesUrRUx7BBZXuFtImtNWJeUkBWFNmHZUTdl2
         Fu+fjBwbQY5GrRtrWt8IGic7gjUCXk5cTavLVYadUYYAk2Byfi2VUEMdgpbKajxCx4+B
         O3xT8tTbKDpTvJV6xl7ekwf4brna/StZEKajxMJIWB94qOeeQSpVwUAUvjPEvawFtbfr
         Nb7A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a34f775c00si735460085a.509.2024.08.04.05.37.48
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 05:37:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-602-0pQ6XgLPOKW17KrFx4hMGg-1; Sun,
 04 Aug 2024 08:37:47 -0400
X-MC-Unique: 0pQ6XgLPOKW17KrFx4hMGg-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5ED3919560B3
	for <blinux-list@gapps.redhat.com>; Sun,  4 Aug 2024 12:37:46 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 59FEB1955D44; Sun,  4 Aug 2024 12:37:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 579161955D42
	for <blinux-list@redhat.com>; Sun,  4 Aug 2024 12:37:46 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D15DC1955D42
	for <blinux-list@redhat.com>; Sun,  4 Aug 2024 12:37:45 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-387-48mA4QsHMomrpaEl-mZwjg-1; Sun,
 04 Aug 2024 08:37:43 -0400
X-MC-Unique: 48mA4QsHMomrpaEl-mZwjg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WcJxg352HzRPH
	for <blinux-list@redhat.com>; Sun,  4 Aug 2024 08:37:43 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WcJxg2rwbzcbc; Sun,  4 Aug 2024 08:37:43 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WcJxg2nY6zcbV
	for <blinux-list@redhat.com>; Sun,  4 Aug 2024 08:37:43 -0400 (EDT)
Date: Sun, 4 Aug 2024 08:37:43 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: zip command info
Message-ID: <0aab1a96-9868-d573-edd6-929f3d053e5b@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
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

What is the difference between freshen and update in the zip command?


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

