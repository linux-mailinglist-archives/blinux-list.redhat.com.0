Return-Path: <blinux-list+bncBDYPVTOXSQEBBHNHTC2QMGQEC5AT6GI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3AD93E459
	for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 11:47:11 +0200 (CEST)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-250a63cf8f9sf1840342fac.2
        for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 02:47:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722160030; cv=pass;
        d=google.com; s=arc-20160816;
        b=IujkYDPKE0GeWk5wxiwF5tkmF0YYotSISynJv/E9JUVaY+vUBORqCgowjLIHkr3jMt
         LYqQh8FRQ5Op8HeOHDx7d8Nag4+Y0Pe3Zx045mzOy3k5f+w8dAb1IAqAbDjZ9As4OD04
         uqKYb1p871RRirwHWaxU2CB486DFmyEpY0PPkmsS+qMjCKxL3wL3noFV3pQR5ceIEa5P
         fH9kxAphlIuJ7if0Xm9N3dNVwmhpfMkQ3C4S5zNIO59jgycaLh7manCdywplf93ntLZT
         7tDPqgF1q79IgshuCgrXOjP5IMCYKHFMLyQB+mQqRIRROfsB+hSPMVF4rvs8eteQg1lE
         gqqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=ihgsxk0ck7oesWDYVH4WCtZ2d4VAXVGw5C3IiJRBmiM=;
        fh=51R5R5hvep9x+dY2+uEirkTrKHBo3kEQYW4LGhHh+Bs=;
        b=dApGnT5iSKeDDRVgmd9QSkjyEt9LBD//FoUDrzV165tqngeO92V6opwnP0ejG5eNe5
         5OnIdpjvXXD13rmnhanUaooJVIdDFlpLvesQnUErm/+6FpYooHgBQvfHWIm0VIktx13/
         At0nUb2Ih3DyGICLpCobd3xpG1XxoAYUkKe/spvEiVpF4uNlY2fcz1f95yQjfIrHCtoO
         t6k+ftwhKH5ZThn+2AawWbhqVXC/Nu9c5dri64ZiCbWmsmwj0rHS7/iXyvaw0KtRbMh1
         4ode4aVirC4eLPvTpBBbsqYluAAYSbvoLt2Ox/fghler7VU+jP/sZyTWbAyxup83/Et3
         5bWA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722160030; x=1722764830;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ihgsxk0ck7oesWDYVH4WCtZ2d4VAXVGw5C3IiJRBmiM=;
        b=J3lG2OSAbPS8uR3QIoG9UBp5XcntcziMoGk2hs2W5KHO9UrtnoYXZNpo47YzcLibi4
         kYjltPysyquMhKGssiqTgJcDcug6G87KuTNcyp6NaXgJUQ3NMruxQ9t5reMMZASJeTjV
         K4ebLDsATPhx5d0/v1fBoXrsx5hynW4rQNp1CtrHa7Zpa3FIsQ0uuD7uUk2Puo6RLRE9
         KNrfysVJPbWmObaZlxcqD5XAqyHIClt7ouR0Q1QJi8hM9PeeQVl8MGDoWS+yvT0perwI
         jtM8XFbpnMYP2W3kI3gCk64KxLvLJJrnAxzT2RCzJritOS8o/SumDcWSVFfIFdh4pWFE
         gO3Q==
X-Forwarded-Encrypted: i=2; AJvYcCWOhr1ng30brEQUWcIsIc5hxt250fJjPV4l5yJnVSG/OcaNsljlId+vMSmyDweX4vQVu+Sxjy8MkkrCm+s9c97ALyVv+Mc3pNn4
X-Gm-Message-State: AOJu0Yxpg4ZD8NYMCiXWJ08iBSO+fyqBC3n//AThP+rGuirQF6Tq5aog
	JHe7SBpm/pw5YFNJXQzTYdJ/MRdsbZMuBpoONTocLl1FyL5z4WQfsjVgIRD0YnQ=
X-Google-Smtp-Source: AGHT+IFj4A1+j9b9d0lEP2IIxNcauvuClmd6PShrbCBFIQb2s4QqxJv8ciF55nKCuzWeLVx6pItLww==
X-Received: by 2002:a05:6870:471e:b0:229:f022:ef83 with SMTP id 586e51a60fabf-267d4f5742cmr6134128fac.43.1722160029728;
        Sun, 28 Jul 2024 02:47:09 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:7a07:b0:25e:160c:c90 with SMTP id
 586e51a60fabf-2649fefe7a3ls4473424fac.2.-pod-prod-08-us; Sun, 28 Jul 2024
 02:47:09 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX3H32MPk+rUOOzFyX8QNeuAxuAjynKx79CoAhmZLRcswI+wFLASJaYgSSk6heoC8upLDhdUT7h1x3j59TPsOf986lzJUtALvfKGNvP
X-Received: by 2002:a05:6870:392c:b0:261:5ec:f79 with SMTP id 586e51a60fabf-267d4f26d82mr6515883fac.32.1722160028948;
        Sun, 28 Jul 2024 02:47:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722160028; cv=none;
        d=google.com; s=arc-20160816;
        b=JO6Qv+QowUpzmTlucfr58PoU27lXmGEzRZ2lGNXth6+N5aUGQm4xeib34WBsKrvPE2
         VxkEcPY82ex4PjnLmfS3r2WiIFQapwLVKKUaThlNOxo8iQ+lTmfUwozZLUs040k/MZ44
         C7F3NX3qsU2EdHAx/KOe2cjcVUD5vVMdiVb32C+RuSNL29Uwr0Z4QUwX2yfN779utqOo
         u1YqXZIwXv4Iwg+GoiDNJm4iCdh60Jcq6DSzHSfM6LLPWIHiWJBxVjKyG7tJR/zdiU4L
         JymgTN7QKtosonKa5lNLpJbsa+31BPvBy9Oh0neKwzBDxb8FU7QeE2oLcSx8vwcBjmtY
         acQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=ukXkSCbDbqS6tmCzPzyy/hEOzHiUYlrbvrmr8nlMJEk=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=V1zfYgwhLjnyqO3MAVLUeD1gdSKBn35W8auzCgRL2NpJv4TxgLlCt++khjMTz/pAge
         /RNVX8gQ+04cxeqTIuovn1m4ntzWOcE0lu+WueNN59cFY0kv3noAAqYPkYJRR1lsGwGM
         w7aGx8n79EC0FTHmcAbBkHo5frZbz+Un/zLEF++ZezipahBqlHcyW979F3JmRZcN+eIy
         jn/QPdoJTh9lHc8qNwM56pAlViOzkqVM8HJ3KYk1YmfPT1VEODan+MDUZZkcjQeIalRG
         ODaRLb3O2gjKEZQZJR1SPoFt4pJ9qwsjPLSKeDIxakx6QkZjn43Uzn/8hbA+69KKOg0j
         HgNg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a1d747678esi801582085a.665.2024.07.28.02.47.08
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jul 2024 02:47:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-55-Lcpj8DRpORCNUbZ0hP7JMA-1; Sun,
 28 Jul 2024 05:47:07 -0400
X-MC-Unique: Lcpj8DRpORCNUbZ0hP7JMA-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 402071955D52
	for <blinux-list@gapps.redhat.com>; Sun, 28 Jul 2024 09:47:05 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 11BB51955F3B; Sun, 28 Jul 2024 09:47:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0F8171955F40
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 09:47:04 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7F8ED1955D4B
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 09:47:04 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-630-cXe4VFSwNC-WQxKkUiWzkg-1; Sun,
 28 Jul 2024 05:46:59 -0400
X-MC-Unique: cXe4VFSwNC-WQxKkUiWzkg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WWxTv3ytLz4CjT
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 05:46:59 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WWxTv3g0Rzcbc; Sun, 28 Jul 2024 05:46:59 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WWxTv3bbvzcbV
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 05:46:59 -0400 (EDT)
Date: Sun, 28 Jul 2024 05:46:59 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: Accessible-Coconut
Message-ID: <4a2f9ccd-06e7-7487-76d2-612c9a766f20@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
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

Has anybody got Accessible-Coconut-22.04.iso on their hard drive?
That's the latest version of the distro on sourceforge.net.
My reason for asking is there's no .sha256 file to go with it I can find
and with unreliable internet connections all over it's easy to download a
corrupted copy and the only way to discover the corruption is to try to
install with the iso.
If possible could someone make an Accessible-coconut-22.04.iso.sha256 file
by running
sha256 -t Accessible-Coconut-22.04.iso
>Accessible-Coconut-22.04.iso.sha256
then post that .sha256 file on this list?

I wrote some scripts to download and verify slint which could be
re-purposed to download Accessible-Coconut and verify it without necessity
to try installing the distro.  If the verification script fails, it
deletes and downloads the iso again for another try at verification
automatically.  After download a user only need to run the script to check
for verification.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

