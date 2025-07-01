Return-Path: <blinux-list+bncBCHOVKVMTAJRBH56SHBQMGQECAOXGCA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 33726AF067D
	for <lists+blinux-list@lfdr.de>; Wed,  2 Jul 2025 00:20:26 +0200 (CEST)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d3d3f6471csf578108085a.3
        for <lists+blinux-list@lfdr.de>; Tue, 01 Jul 2025 15:20:26 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751408416; cv=pass;
        d=google.com; s=arc-20240605;
        b=Yqo3IvkKEPvs0qzsR0GBpJEe6ynRpJfkVq2uPxsTLWi5aaBpvQkc5GZfSlOJpnGWIx
         erXPfc6iPmIZDklbvLGzez716BaaMaLytNYmXwANBnK7ooCZDIT1a7C+LsAHS4WkfsS9
         KsYe115wnDmh5SY8u1lrM6aJYcN37ohgD4HttnmyRG7XP2d8xi0CmZjrflf2TPbfbmO2
         Zw5J6XBQsYGeaRXS3zSROPOvwd0eF94scDWAMe50fKnGu1lBQ3tiRROOdGh5Wl7lg84e
         ZtrISlRgLYSGWlvQldYry2a0yM8KYd6es+pXavBuKOlgVTM0D3yVR6Qd+ShwzH6TfdOj
         d7AQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:organization:from
         :reply-to:to:user-agent:mime-version:date:message-id:delivered-to;
        bh=oUwmPy8JcCyHF6V3T3l85VUxtux0AUbzzybk5yNRpPo=;
        fh=cR4woD0Vj2y2p7KmCqDQphNshRFXJuUQ9iXGPKW7yTU=;
        b=HDiOSbEZCLveNQFpyC8zh4hBw9b08HRaZl7LkAZv/KKqvB9PSgV2p4ELRCO14arLxW
         Sgrktgay2cSPWSEFn2xUMqPlap2/vS1UBKMLsJZEOvIpIBv2Zv7tdQ3LxkZB3lWz2Wtg
         7gKkXtAbDxnWqHWgRNK/5bDBHb2UJUkPlg9b9AkLI7bIUQ5P4ZBoSQp676NuuELip9hs
         EiiDFJJ7jVSQop4SpPPLwcFD690CBrl/GspTnGpWlLNXw7vlFhmg9nRtm5N95kDt05hW
         prJMthho7RMzqh3LBDB9AY01f7dmBd4iV65zecrS6YiniUUP0AQAf6xvcMDHejNvrvwE
         Rjgg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@blindhelp.net header.s=mail header.b=OigaadHu;
       arc=pass (i=1 spf=pass spfdomain=blindhelp.net);
       spf=pass (google.com: domain of abdullahzubair@blindhelp.net designates 178.154.239.94 as permitted sender) smtp.mailfrom=abdullahzubair@blindhelp.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751408416; x=1752013216;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:organization:from:reply-to:to:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oUwmPy8JcCyHF6V3T3l85VUxtux0AUbzzybk5yNRpPo=;
        b=DZqY9cTgeY9QByXBWGQzxkfPAZc5oAshfAe3hoAjybwmxDGPfTAm89XRglkzPsYF3L
         yGw4hoyniElMVys2ILt2oSTJGglxTqxFGg2ye2jj6pDPXOc0+aHFCitxT3qyukdv0/wK
         GAUJ8aTPy7YlSDCE7RhQi3by+1NkegVEPMqFBNwoUC7hTwqQ/1oDIBnuFfLMBdXNlWkm
         60Ho4pDK7L0RMEAtCWFb/R8lZpAkRKQpj8XZ4N/9pPPgDdmCkVm1rvF/zvAVTzJ5m7uP
         lgPedYWt930PGn1fqoU3sTXNzRTZuOKfNDqRuykCyGBoHkBsn1UPxdWv4lja4o78GmKu
         oeTA==
X-Forwarded-Encrypted: i=3; AJvYcCVhP8jOac3iia+KHj9UnnAUksk4Q5V8T9TB53uWzjWliaDESW6eJKrF90hUd+I90EKPSKgnoA==@lfdr.de
X-Gm-Message-State: AOJu0Yxgeq5p3NGAzAn9wN+Z9LhSbyib6x971jHNOUdr30dsC0L7MkR/
	wXqS2cG4IvYLJY/muo9CA/P8UeL+pIyvqiCZ0ysEZ+zSRsjVPz/n6Pa2vAvEvr58xDM=
X-Google-Smtp-Source: AGHT+IE7aykVdm7NM/uaN5swM2iVUcad1TvBCJlFkTKnI/Rodua1E/JPmfUIceTvgiQ8uagGwHJSxQ==
X-Received: by 2002:a05:620a:2a09:b0:7c5:4278:d15e with SMTP id af79cd13be357-7d5c47831a2mr99395885a.33.1751408416169;
        Tue, 01 Jul 2025 15:20:16 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZf250KFuzJxEFDBbwHrE/gYxmyT4Xm0Iv3xwdSIxGlIyQ==
Received: by 2002:a05:622a:1922:b0:476:7bf7:255e with SMTP id
 d75a77b69052e-4a974d40d61ls5419071cf.1.-pod-prod-05-us; Tue, 01 Jul 2025
 15:20:15 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUlbuV7FaSWFXJuZ+Moo5Onqc87UnHs2yqnl8pVIGzjfyqk3nBLQ2gItVCPMUiJktNlTGGgtJS2unCyhA==@gapps.redhat.com
X-Received: by 2002:a05:622a:2512:b0:476:875e:516d with SMTP id d75a77b69052e-4a9769802bcmr10621321cf.36.1751408415066;
        Tue, 01 Jul 2025 15:20:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751408415; cv=pass;
        d=google.com; s=arc-20240605;
        b=HvT1F4Qwv4fNVkWa1s1gldUW6rIh1G5JtpwePZLFWeTFehYs+7+/M4YTXskjPISDBZ
         GbBBJlVdKORLz67p7wM9aX/O/PscHaV8BPqoJreWmRPU+iuIhXtdZ4zJQed5ecy6aL3u
         olyX01mTLT0hKBQryGw3n9w0hrL4C+fqUV7elBzGD9ufaD3ZzcXJ27pyUjUOAy8//fIT
         +/W82ZtR3UdGDi5wMqN+7sjDR8EezgtVyECI5pVcMAa5QpjJFGKUJVbrNctA/y8UPefo
         xUy7KmbMr2NugirVb0nc5WsYBLLSiGkwVI2g4nYnTohT+ts6FNCKAEj29EInbyeaPmKq
         NUpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-language:subject:organization:from:reply-to:to:user-agent
         :mime-version:date:message-id:dkim-signature:delivered-to;
        bh=niqYDuKLsh64HRIbX7PrVAGQ5VWkg87Jf0ZAYcpbaQ4=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=dCXatXSrhdMzilQy73QR5jLnwu8eDh/EfMZBP4fArqei2uzL3etcBLa80ASuNpUnCV
         sx3Alvjxf7mb1dq2WQ9IDwCCGdCT71wH+l9ndtLZD2yi2efm6U1eSQqQK66UTZNr1BdE
         kLvHvL8vu/OZXSlY9uEtBDuAzoLLV4rFfVTEDpx7jH82YKRaAPqWCHx7CHX2RwpoYbyR
         AgIZmJrjf+p3mCksRQcwR3kVJARghAJ+aPqRGFqelxMfoRMeNFF3A04XSqyICzJRfZqL
         TenNCILjph1ai0vhzlw0j8AMgg5wHrjNzWoyGIDBDSAgofQsjVgD5aOFBGurwqwjIcB/
         35bw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@blindhelp.net header.s=mail header.b=OigaadHu;
       arc=pass (i=1 spf=pass spfdomain=blindhelp.net);
       spf=pass (google.com: domain of abdullahzubair@blindhelp.net designates 178.154.239.94 as permitted sender) smtp.mailfrom=abdullahzubair@blindhelp.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4a7fc236d92si116657461cf.307.2025.07.01.15.20.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 15:20:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of abdullahzubair@blindhelp.net designates 178.154.239.94 as permitted sender) client-ip=178.154.239.94;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-37-xPUB8xXON56rAgP_m0FPyg-1; Tue,
 01 Jul 2025 18:20:12 -0400
X-MC-Unique: xPUB8xXON56rAgP_m0FPyg-1
X-Mimecast-MFC-AGG-ID: xPUB8xXON56rAgP_m0FPyg_1751408412
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0DE9A18DA5C0
	for <blinux-list@gapps.redhat.com>; Tue,  1 Jul 2025 22:20:12 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 08EF41956066; Tue,  1 Jul 2025 22:20:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 05FF619560AB
	for <blinux-list@redhat.com>; Tue,  1 Jul 2025 22:20:11 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7AA011955F3E
	for <blinux-list@redhat.com>; Tue,  1 Jul 2025 22:20:11 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751408410;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:dkim-signature;
	bh=niqYDuKLsh64HRIbX7PrVAGQ5VWkg87Jf0ZAYcpbaQ4=;
	b=WhUh0sgW0JlJQ2/KNGhimrGSLCveU0hRBLwr8+auJy68WkYlbUrG2essgo2rc2lhkHRjAS
	Av38gI5pz0TrvWZXHwzonWYe0vklauKS+bWm4otw29u2DTNAdCgAIkOk0IwT5iSTfGoBSh
	FjCyhQyw9vmumA6OZ8sy9we9z1MQBDwqdpua+71AebhbWp26brRgM2N+QnYNsny/68h8tB
	5jdYxnuyGyW09Kdi/cc1KzSnWLOxXq7jfud0gbM3BxdVe3luwUl6tR79ufoNPmuEOA3jk9
	Cz4ixuaS9ZEDD2Ed/HFJsMRE2R+HUDy9t64bIr64tzPPy5BPKLC9sFw4w+jvwQ==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751408410; a=rsa-sha256;
	cv=none;
	b=ZVLGRxLR4MW5GdNmrUwWPrAi14NysWsetv8zLK/cK1kYxqxGBag9L5BmkESMPY7TwIKBuy
	UsRDOBFBpRT+9GYIS/WpZQuxDNYek5oyMil5taJAKjE3yTqGDZQkdwsx/fGxPPE6f7U/dw
	htlMFjGAA/xQjAkkzn0VWZTIUnjeDHTNOu5xL3Bn01Vcdkig9WVtlVl8fpm23tyBEEPONB
	8Jz/QGR8nOv5yn6XR9IN7vQngwxW1sgE0UhSLOcKwkpUuy/WE0u1cSLvq20xgcZAUdyezc
	2+lmcudrihXxcGWYtgd70eqriMWKHcynXftzJ6ORv82VHeFzzpJ7VXAuUMBkJQ==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=fail ("body hash did not verify") header.d=blindhelp.net header.s=mail header.b=OigaadHu;
	dmarc=none;
	spf=pass (relay.mimecast.com: domain of abdullahzubair@blindhelp.net designates 178.154.239.94 as permitted sender) smtp.mailfrom=abdullahzubair@blindhelp.net
Received: from forward401a.mail.yandex.net (forward401a.mail.yandex.net
 [178.154.239.94]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-651-6aHGTbGxPQm3tqc2u5t4Fg-1; Tue, 01 Jul 2025 18:20:08 -0400
X-MC-Unique: 6aHGTbGxPQm3tqc2u5t4Fg-1
X-Mimecast-MFC-AGG-ID: 6aHGTbGxPQm3tqc2u5t4Fg_1751408407
Received: from mail-nwsmtp-smtp-production-main-97.vla.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-97.vla.yp-c.yandex.net [IPv6:2a02:6b8:c1d:5a04:0:640:f566:0])
	by forward401a.mail.yandex.net (Yandex) with ESMTPS id D65A164B23
	for <blinux-list@redhat.com>; Wed,  2 Jul 2025 01:12:27 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-97.vla.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id PCjIje2LquQ0-RRyyioJn;
	Wed, 02 Jul 2025 01:12:27 +0300
X-Yandex-Fwd: 1
Message-ID: <04ad9922-c266-43ab-9474-9c896ca850cf@BlindHelp.net>
Date: Wed, 2 Jul 2025 03:12:24 +0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Linux for blind general discussion <blinux-list@redhat.com>
Reply-To: AbdullahZubair@BlindHelp.net
From: Abdullah Zubair <AbdullahZubair@BlindHelp.net>
Organization: Blind Help Project
Subject: Seeking Guidance on Switching to Linux for Personal Use
X-Mimecast-Spam-Score: 1
X-Mimecast-MFC-PROC-ID: JaF7xNJcV5Q_74kaywhjbl10yp_8BR71me5moX8Ysqc_1751408407
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: multipart/alternative;
 boundary="------------KzS1E0eTRjFOduMoN0k8Oizo"
Content-Language: en-US
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Original-Sender: abdullahzubair@blindhelp.net
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@blindhelp.net header.s=mail header.b=OigaadHu;
       arc=pass (i=1 spf=pass spfdomain=blindhelp.net);       spf=pass
 (google.com: domain of abdullahzubair@blindhelp.net designates 178.154.239.94
 as permitted sender) smtp.mailfrom=abdullahzubair@blindhelp.net
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

This is a multi-part message in MIME format.
--------------KzS1E0eTRjFOduMoN0k8Oizo
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi everyone,
I hope you're all doing well.
Let me quickly introduce myself. My name is Abdullah, writing to you=20
from Pakistan. I'm 25 years old, and a lifelong technology enthusiast.=20
Professionally, I work as a Web Developer and DevOps Engineer, so Linux=20
has been part of my daily workflow for quite some time, though mostly in=20
a headless, server-side environment.
I regularly manage Debian-based LEMP stacks (Linux, NGINX, MariaDB,=20
PHP-FPM), handle deployments, maintain Docker containers, and oversee=20
several web applications and services. So, I=E2=80=99d consider myself an=
=20
intermediate Linux user in the server context.
However, I=E2=80=99ve been a Windows user for over 20 years, from Windows 9=
8 all=20
the way to Windows 10, which I currently use with NVDA 2024.1.2. For a=20
long time now, I=E2=80=99ve wanted to transition to Linux for personal desk=
top=20
use, not just on remote servers.
I truly admire Linux for its freedom, flexibility, and licensing model,=20
and I feel it's time to make the switch, but I=E2=80=99m aware that as a bl=
ind=20
user, this change will come with new challenges, especially around=20
accessibility, desktop environments, screen readers, shortcuts, and=20
overall UX.
That brings me to my main reason for reaching out.
I=E2=80=99d love some guidance, mentorship, or a roadmap on how to start th=
is=20
transition. Specifically:

  * Which distro(s) are most accessible for blind users?
  * How different is the desktop experience compared to Windows + NVDA?
  * Which screen readers or tools should I get familiar with?
  * What should I learn first? Are there any key tutorials or
    beginner-friendly resources?
  * How do you handle common tasks like file management, software
    installation, and system settings with a screen reader?
  * Any must-know keyboard shortcuts or accessibility hacks?

If there are any detailed guides, blog posts, or YouTube videos you=20
recommend, I=E2=80=99m all ears. I=E2=80=99m ready to invest the time to le=
arn and would=20
really appreciate your help.
Looking forward to your kind insights, experiences, and suggestions.=20
Thanks in advance for supporting a fellow blind techie!
Cheers,
Abdullah Zubair
Pakistan
Web Developer & DevOps Engineer
(Blind Linux Enthusiast-in-Transition =F0=9F=98=89)

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--------------KzS1E0eTRjFOduMoN0k8Oizo
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p align=3D"justify">Hi everyone,<br>
      I hope you're all doing well.<br>
      Let me quickly introduce myself. My name is Abdullah, writing to
      you from Pakistan. I'm 25 years old, and a lifelong technology
      enthusiast. Professionally, I work as a Web Developer and DevOps
      Engineer, so Linux has been part of my daily workflow for quite
      some time, though mostly in a headless, server-side environment.<br>
      I regularly manage Debian-based LEMP stacks (Linux, NGINX,
      MariaDB, PHP-FPM), handle deployments, maintain Docker containers,
      and oversee several web applications and services. So, I=E2=80=99d
      consider myself an intermediate Linux user in the server context.<br>
      However, I=E2=80=99ve been a Windows user for over 20 years, from Win=
dows
      98 all the way to Windows 10, which I currently use with NVDA
      2024.1.2. For a long time now, I=E2=80=99ve wanted to transition to L=
inux
      for personal desktop use, not just on remote servers.<br>
      I truly admire Linux for its freedom, flexibility, and licensing
      model, and I feel it's time to make the switch, but I=E2=80=99m aware=
 that
      as a blind user, this change will come with new challenges,
      especially around accessibility, desktop environments, screen
      readers, shortcuts, and overall UX.<br>
      That brings me to my main reason for reaching out.<br>
      I=E2=80=99d love some guidance, mentorship, or a roadmap on how to st=
art
      this transition. Specifically:<br>
    </p>
    <ul>
      <li>Which distro(s) are most accessible for blind users?</li>
      <li>How different is the desktop experience compared to Windows +
        NVDA?</li>
      <li>Which screen readers or tools should I get familiar with?</li>
      <li>What should I learn first? Are there any key tutorials or
        beginner-friendly resources?</li>
      <li>How do you handle common tasks like file management, software
        installation, and system settings with a screen reader?</li>
      <li>Any must-know keyboard shortcuts or accessibility hacks?</li>
    </ul>
    <p align=3D"justify">If there are any detailed guides, blog posts, or
      YouTube videos you recommend, I=E2=80=99m all ears. I=E2=80=99m ready=
 to invest
      the time to learn and would really appreciate your help.<br>
      Looking forward to your kind insights, experiences, and
      suggestions. Thanks in advance for supporting a fellow blind
      techie!<br>
      Cheers,<br>
      Abdullah Zubair<br>
      Pakistan<br>
      Web Developer &amp; DevOps Engineer<br>
      (Blind Linux Enthusiast-in-Transition =F0=9F=98=89)<br>
    </p>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--------------KzS1E0eTRjFOduMoN0k8Oizo--

