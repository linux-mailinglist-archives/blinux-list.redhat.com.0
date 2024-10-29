Return-Path: <blinux-list+bncBCMKFVG4RQEBBLOQQS4QMGQE2RZNH7I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com [209.85.128.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2B79B51B9
	for <lists+blinux-list@lfdr.de>; Tue, 29 Oct 2024 19:23:44 +0100 (CET)
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-6e3705b2883sf116421487b3.3
        for <lists+blinux-list@lfdr.de>; Tue, 29 Oct 2024 11:23:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1730226223; cv=pass;
        d=google.com; s=arc-20240605;
        b=L1BIITUYhvsAj265DDEy+PoZZEw7POeY44wUay4lmnpIfs1/fyhSmrRlrIQ0+8vDfy
         JqrrIfQrr3+7zv3EjaDk0TGu3UaTDL6TT8KJv7Fv1ahN5Yu+ClG7aMJ0VP64QpS1SXSb
         Bs8yVyqrusWfJMRaqhJNL9gFDioNi8NAzhjHD7sF9hbDCkkIUtOQ8AjdsR1Z2dVQZu7r
         9e+zATJTZ/ZPgPOm4nzZFf1EdZjWEbPenrQ/2wi59EV6AfI6VQGFfNcK7Psh3vGIRPxR
         5FkvYH5CbNXYZGiSd2NNlCxb0t8+IvahrkmyVPzuz74nAF7sd+B1udFFJinDBSFn+0ZW
         cllA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:autocrypt:subject
         :from:to:user-agent:mime-version:date:message-id:delivered-to;
        bh=HrS6dl7pqKIQrzn3Uxk6cqtwjOxPDS9Wy+IAUQ3uXuI=;
        fh=x730Q+DlZmbwy+g4eCTg7XwhjbxiUwSfR2ftdIX+1sk=;
        b=KRiFc0LqheX57Bu9tLR3tT10yW1bVRR8llZw6+dwGo8HKuDofRQdUZYyU/j0kbFZg3
         8Fe3lgUJhurUHSnjcZFZMsJ9iSXMVW9RDRzQiiJgcfyJlEok4RTBS8+3Bhz5g43k6HWv
         dPRBc9+MfZSmigZBTTGUNt9Zvc+xR+LX5CUQFCCJP0P2AehfflVUpU9VkElqFJPVZSIq
         /Ppty0j2fj+qsxRfd2kHk1xWdWeegT/FaYBHE841YFs588YIt+mSYHiQz/FFsyedMc+g
         j/zveCyuRN2w1ce1mDKWOnSZH3zfuCCn6IXUE1Tyf304HgTl7yJrioaHd6RK6J3Kv9TX
         Oz3A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730226223; x=1730831023;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:autocrypt:subject:from:to:user-agent:mime-version
         :date:message-id:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HrS6dl7pqKIQrzn3Uxk6cqtwjOxPDS9Wy+IAUQ3uXuI=;
        b=JCcCts8gUAksFGD6ji3U2ZciDbqo+3Z3QnYtTEz/GPYM3P5PkwX0plzI7kkDrcVNkE
         Y+IaeOqIn5j9x4M2VSusnVNUjFDh3vS+WxpIniAMW+33GCc6aR3+9mjheXCWme/JQih/
         OKAZVLV44PIi1uLS+oBt+tSBdpKC1vufkA1dNzEVLuc800zy/HUXTMmgHXDAwAKW5QQX
         Wi7n2QTVhjMdgwCBhXXRzE7d19DBwQ53YPdNNnwmvd5LbAco+Gn9jVWurgVZTE8x+v6R
         8O2ULto+/v/dLjxTfey7pTEdtWZym20mdWhsqcqyzOavCLLd9kUuY2BVEKzqKjKARmON
         fvWw==
X-Forwarded-Encrypted: i=2; AJvYcCXDIk2BU7dzTgUPlDrczh4apcEKp6ETUdi4w6WuZvI4IR/Qiyl8c270/hn7RRq3K8Jk2BCIEw==@lfdr.de
X-Gm-Message-State: AOJu0YwsXEmoB3hBHrCE31Wqy2O5Hw4lPgdoGaktCEtXfJCBzGBk2lJj
	KR5LIYRbmCPY5YZoZAqMzsr9EMu92hcq81MP0eWTyM+J0mi/01+eAq9x5GPGHG4=
X-Google-Smtp-Source: AGHT+IELkx2SCo+JwOymeEkVsJS+txWIT5VL6zKm/WQ76Bh3NCQH/5mPCUsdaNRWG0IEPTlSFZxF7w==
X-Received: by 2002:a05:690c:87:b0:6ea:1f0f:c921 with SMTP id 00721157ae682-6ea1f0fcaf6mr45968287b3.41.1730226222439;
        Tue, 29 Oct 2024 11:23:42 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5808:0:b0:458:2e21:e400 with SMTP id d75a77b69052e-46122b29191ls103604711cf.0.-pod-prod-04-us;
 Tue, 29 Oct 2024 11:23:41 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV8r+edY1s7dITl1n1WGCVZYQgxmCAHQV5cuztN5K+cmjS3WV6uuxH7uTQnLSJVJBHM6iyuyBavzFPPWw==@gapps.redhat.com
X-Received: by 2002:ac8:5e4c:0:b0:461:2897:51f9 with SMTP id d75a77b69052e-4613c1ba75fmr211956391cf.50.1730226219213;
        Tue, 29 Oct 2024 11:23:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1730226219; cv=none;
        d=google.com; s=arc-20240605;
        b=fFKx/DLPx9XMPalPXoXtnatixDG76e76LwTKRWVtxFjAY+PEKqG4XjwN9fJSNCwYrW
         RxHVLd2dirIiTImGGAM/HRgJ5j0WYUp6TnxoN38RFl7yM+wnFH2nZE9mfQHCvG4k0MXg
         fZYC9swlynt0czO/Ph3R38LwFRCre8q2WSkU6nlHD+KY7Ki9pgg0ZYmugJA8BXpNOA/I
         MjwdW9xCGDNdLmO/UoS2YXNScIUGEFR/RXDDFqqbxEFqcBItrD0T4SRausJRYNn5taOG
         opRYrA1GitJ39pGHq8HVcgYeAGmaOJ1eZP887gEa1ouu5oQmJ6fz8GOl1zEjodMiHGwc
         yO3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:autocrypt:subject:from
         :to:user-agent:mime-version:date:message-id:delivered-to;
        bh=CpjwHoegeCQBiNkE7UxDO7BVCEFlTzrxH5XNrpIbTcc=;
        fh=SQNCsZ7t/gIntn0gpNDQjDjx339smkM/+/JPOpkafYA=;
        b=eyshp6uJS/s7kXm9AKakaM04TmWcnWTpPiHsMJMPwd+TPE9nbcOALHxge8N+L5Znck
         K6BHMLxxq9hKbcpLF7mHAhjGOKp8PDjt/qScQr66T7uoLVzYdX9qYkbbfWhqSdL97YBw
         B19AieAN511kM86t83crTfGYNJmMAsNp3VR8gyHoYYuTAsWSyhf5f5Ymmqfbz98wR7vO
         pvZ++tQrpqFE7F84LQUMHfFukeYezCQpK+cIxo0uiX5OOLjwyq9zklhJoCjt0mf3psdl
         Lh2zesLKc2GglTovCQWpV/7hvPnX4l95zNk2oQIZuPL8WddgnoF9rdj4WoU/EQv9oqS0
         7sHw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46132133276si109462501cf.204.2024.10.29.11.23.38
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 11:23:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-333-nQy0GzZvPSmH_jlii4wQRA-1; Tue,
 29 Oct 2024 14:23:37 -0400
X-MC-Unique: nQy0GzZvPSmH_jlii4wQRA-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 09B3119560A1
	for <blinux-list@gapps.redhat.com>; Tue, 29 Oct 2024 18:23:37 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 03BD01956054; Tue, 29 Oct 2024 18:23:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0166319560AA
	for <blinux-list@redhat.com>; Tue, 29 Oct 2024 18:23:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 54A4019560A2
	for <blinux-list@redhat.com>; Tue, 29 Oct 2024 18:23:36 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-377-_RFILtqBPrq4mEcNXz7NrA-1; Tue,
 29 Oct 2024 14:23:33 -0400
X-MC-Unique: _RFILtqBPrq4mEcNXz7NrA-1
Received: from [192.168.112.94] (92-184-107-232.mobile.fr.orangecustomers.net [92.184.107.232])
	by darkstar.slint.fr (Postfix) with ESMTPSA id A69EA636D5;
	Tue, 29 Oct 2024 19:17:39 +0100 (CET)
Message-ID: <f83f8b32-a306-4802-adb2-66d3e6ca06e4@slint.fr>
Date: Tue, 29 Oct 2024 19:22:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: orca-list <orca-list@gnome.org>,
 Linux for blind general discussion <blinux-list@redhat.com>
From: "'Didier Spaier' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Accessibility of Calamares with speech and Braille across
 distributions?
Autocrypt: addr=didier@slint.fr; keydata=
 xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwHkEEwEKACMCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCYZVPGAAKCRDVAgLvYMA+6pOxCADB2pKmm/LgncWREzob
 Z6M+RsvgzvGS/48ik/E/TH2KyPO/hn+Fzbj4MmMwQdqz5YPfdBmkcM7WyDzkPaukzfS8QUvl
 VKyWQ92pqpbI/JUeShI+DLMKV7LZxiPinMBuKmpyLdpxuhk08g2+6F8X6ztbl8mbXQy5jcIZ
 zKQ442N0D4wnn8VXM0tb0uonmqc6ly7dcmkQ/GI7Q0tF/hkn4n3g1Lh6+K1jBqEIC9vn/c6X
 yf67ec+CwbE0GtgVM1FR1R0J1y/6vkYWr7gZHhnzgwKr6k1wzCGkVUyCSpFwB2oeANT9c0qP
 rgn4YjoYQIHS3vMWd630vRyOfqwetWXmVjPxzsBNBFY6fG8BCACqDQKHSw0ElDkwPPpNguL0
 ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliwWyj+9/ro
 JlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+vrsNu7T9r
 o3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19Itys/CbN
 vxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2OP3refmS
 RxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwF8EGAEKAAkCGwwFAmGVT44ACgkQ1QIC
 72DAPuqjhwgApl0pdNIrbU+8Hn0mr3CTEXxPaTbAU2bYFPDiBaEvXsBGoz8xJ6EZQnywbC7o
 l5wFtVT08LKDewLHaL78zS+Q8rv5sNmWwzMAaipFtZg67e/rU3V5tw4E12nUghyMzQpngUur
 lZPMFlB9IZN9681cXuv2sZzAZlR2+3PsSAftpPQxReoSC7hj3dfiCiAis19G3A184HClA5MB
 I5heGinSz7R/AXhkiej8HZZzz9ZPkS7aeL8HsZKqCwZvViutbGmpm+V70JnbRAHLFjYb+Se3
 rdUWWAXcca4Ry8HCLTo5iK9xCTQh5gEuJ7ROdOXeY4SvMiqWjYhlrsR0qhTv9q/gfg==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: slint.fr
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: didier@slint.fr
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Original-From: Didier Spaier <didier@slint.fr>
Reply-To: Didier Spaier <didier@slint.fr>
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

Hi,

I consider including the Calamares installer instead of the current one for the
distribution I maintain.

I assume that its accessibility with speech and braille using Orca and brlapi
depends on its configuration, hence my question: what are the distributions
providing the most accessible Calamares?

Cheers,
Didier


To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

