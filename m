Return-Path: <blinux-list+bncBDJZLHF5T4GBBLH7YW3QMGQEDDNVG3Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0EA97ED57
	for <lists+blinux-list@lfdr.de>; Mon, 23 Sep 2024 16:48:14 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-45834f5927asf60974081cf.2
        for <lists+blinux-list@lfdr.de>; Mon, 23 Sep 2024 07:48:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1727102893; cv=pass;
        d=google.com; s=arc-20240605;
        b=YTzMZx13aHG0HQDk5bMqpDJOZvvN37lBaL/TSxfUbZcuND7FJAUA1UsfKgTdA5v6EL
         GfnWo9ZKffiP68asbSJHWqpG5b/4O6WNFOK2Ok+72PRHTbynZTIRAdbdX40QRep2L6xt
         qRTNc92KRlF/aQ+/Cc7pheMkP5Liz8rXBrdnBREOvIwNfkS0w/jXXNVz8ERZGqM5/Fy+
         ec5EBI0z8o2F1nyHAvH2NBMON7gQoFnCLWtqF5NEntnY0LWUyUO9l5NiShX2ctR456yu
         hPloD+CCRd4WRCC8gnQkKS3CIdaE1lS3WwQM/+Yj/LoPa79Lh+KsCDj6FeHVeh4IRZEv
         Q4Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding
         :content-disposition:user-agent:in-reply-to:mime-version:references
         :message-id:subject:cc:to:from:date:delivered-to;
        bh=gU3/QlLX7qp06BhWN2gaCzC8puKBh3geaBa2SZHe80Q=;
        fh=JtDrxh9bytDhCZyCL7OQJjRkKsDAFG1BM/guLkI8fZY=;
        b=XS7VRQJvh14z5FZ0NddCdgjqtOpRNR/HGUI+lzsm1QZs4FECPOUpdNUAgZX92s2gl+
         Rop0VFSbQMimzME2AcfmPYrpjk16+V7pOJN09PAR5ftBDbpnadDL3emrx1OQUsU+dv0W
         f3iPd+aVk/NKm94nPVGuBPL6B0ZZXMK0LQlUxkJOqwWFSyy4dqnOq93zbmbYhBMewJRG
         kdQ94a/IS10UUO85WcI0HtSQC9zp/V2L0pA3a6GE/I6FiOVVYegGlKt90LZdr35Y0a7L
         yF0JbEZgwSwKfsgapJNODMmPmNyAof7tUx+MOEwMMBC7botedSVUvbh5MF4jgDJFZjJC
         MPsA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux-mail@aegisinfosys.com designates 65.242.138.29 as permitted sender) smtp.mailfrom=blinux-mail@aegisinfosys.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727102893; x=1727707693;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :content-transfer-encoding:x-original-authentication-results
         :x-original-sender:content-disposition:user-agent:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gU3/QlLX7qp06BhWN2gaCzC8puKBh3geaBa2SZHe80Q=;
        b=La8HXD+4I3YtFYJP+fgX5AoH0DeKbZsHRN61f/7+Oe3wyb5FJfv9fRubU/RtFJ5ms4
         xUjMx1xAqFHuc+VbOuElZBG7Gji8asAcNb/K1Cn5oaDNqsLZP60CpeMZxxNdaDD/RwQF
         Bw/FA+/BMWb08RghgGSJIpj6vRGSleEfOtGJXsvNX02sKf7uZlmI/FsCdwukZU6jbz8M
         vsqlxcmPr5ilbXHmnKiiZmtsLaYSNVU+2bvMw+APzPRz7J9hXqq5d9xEgRU+3xWToZiK
         Hp2fUCt4eDZtUZSvCOX5qZ2N64PWwMzmY/3po8cdp4euIj2UO1EhaLYBrqBsoEKCFA4V
         RQqg==
X-Forwarded-Encrypted: i=2; AJvYcCVH+pX9/ng16QsqypeBHIV3f3qHNGrEmW6eG3JCPqcYNNzDnmgInZ5EwCOh3nogrUq66RkH7w==@lfdr.de
X-Gm-Message-State: AOJu0YyNR/5UR2+Pg35n4FmfL9+B929MQBPgFCa8Cusmz7BYaQ0i9oqe
	69d5Ex6fP+xZuC0/691qyK4MIE4U4o9R5Kwopc0cqdQt4Wo98aWjEi7/u3ZgE7w=
X-Google-Smtp-Source: AGHT+IHnltnU4lLal4reOl7vzDKItYyPmJd9XbBnfjk3HP/ULh2okFRQPNEb4OEWKWy2xvbVeoNTlg==
X-Received: by 2002:ac8:58c1:0:b0:458:697c:94b with SMTP id d75a77b69052e-45b22701dafmr198101561cf.34.1727102892894;
        Mon, 23 Sep 2024 07:48:12 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7f07:0:b0:446:4642:4f5e with SMTP id d75a77b69052e-45b166a5ba6ls80504151cf.2.-pod-prod-08-us;
 Mon, 23 Sep 2024 07:48:12 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXYD74rl+SoUYTFGu/+gh2CTGZrtoAIOH3Od+BCLZ32K6Tn6vrqVPcmaaWvETGrSRlASMrcRYKlewhb5w==@gapps.redhat.com
X-Received: by 2002:a05:622a:15d6:b0:458:5716:fbd8 with SMTP id d75a77b69052e-45b227000afmr201364111cf.32.1727102892049;
        Mon, 23 Sep 2024 07:48:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1727102892; cv=none;
        d=google.com; s=arc-20240605;
        b=EhKqyU2E37XJ1MwaqR2D0JeVYYY3i/flsQEFQ8zJZQxXRK3+6cZ7ie2eJb3HpvBXgu
         RRtt3haRYe0hQDsWyk4oP0RCUeckUJYyJZHEptRvBQW/Uvsfll77a7uc6mJQjAFFw0VX
         7C8XMdBE4OptqE8+ktUzbLPs7athbc1hKkr4obv63kYBfeh2LLl4b7MdevTvW526ZPjO
         qyuAe7CsOguX2vr46/xB9HAXcoOXZIT+42NruNHRxGMA279mTpYw2cmikJgZ72nD04cH
         euJ6VId7lKD5T5CSeFpJsVYOYaGixEFBH8WUehrNhW1RwSZfgixrBNb1L3YSWjXjFjtm
         PBjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:user-agent:in-reply-to:mime-version:references
         :message-id:subject:cc:to:from:date:delivered-to;
        bh=zEsJZa4GkO7IdqoPd37luBjBnULY2XDzKpqcfOnVdmk=;
        fh=71dRKId0vhc2OBbBdNyFr5e5jwSd8uHPlX/mmKgg3wU=;
        b=YYRnGFIe/kNea7b/oVmFl3Rsnv4bT+h5GOPQRoH4o18ENoLG5fLB14x6+o5egezUs2
         b45D2oHQvW0Qb//wTzLCQeJLh+DInSxIdg5vXEfA/esHtsDehkhtES3kQwan+OTKCqsV
         y9ALZAE550OLxm5JeXh2CwG2vU9DdToWb0cyuMv5FD3cRlFouBXrIZq2MgS07lS0AL0q
         8Q3nIsAiH/fW1CTZy8ENc/Pn0bbVw+ZZJ31GqCuISNZ1C0873quybyobPvmFEFCzDgCY
         M/JUPkhT8vHzKKzMINMV+ofdf48Og4+2ecQanP+C+A59cQVMq3SyZhPI4tdYMCQRg3vW
         JDMw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux-mail@aegisinfosys.com designates 65.242.138.29 as permitted sender) smtp.mailfrom=blinux-mail@aegisinfosys.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-45b178681cbsi106503201cf.144.2024.09.23.07.48.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 07:48:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of blinux-mail@aegisinfosys.com designates 65.242.138.29 as permitted sender) client-ip=65.242.138.29;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-2-1DCaPCxXOQeQX9jaxanS8Q-1; Mon,
 23 Sep 2024 10:48:10 -0400
X-MC-Unique: 1DCaPCxXOQeQX9jaxanS8Q-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D91311955BF8
	for <blinux-list@gapps.redhat.com>; Mon, 23 Sep 2024 14:48:09 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D65AB30001A1; Mon, 23 Sep 2024 14:48:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D3EE83001FE8
	for <blinux-list@redhat.com>; Mon, 23 Sep 2024 14:48:09 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 29F441955BF8
	for <blinux-list@redhat.com>; Mon, 23 Sep 2024 14:48:09 +0000 (UTC)
Received: from nntp.AegisInfoSys.com (nntp.AegisInfoSys.com [65.242.138.29])
 by relay.mimecast.com with ESMTP id us-mta-500-hPJNsEbeOiCiMrC1RIQh_Q-1;
 Mon, 23 Sep 2024 10:48:06 -0400
X-MC-Unique: hPJNsEbeOiCiMrC1RIQh_Q-1
Received: (from henry@localhost) by nntp.AegisInfoSys.com (8.6.9/8.6.9) id KAA03100; Mon, 23 Sep 2024 10:39:42 -0400
Date: Mon, 23 Sep 2024 10:39:42 -0400
From: Henry Yen <blinux-mail@AegisInfoSys.com>
To: Rob Hudson <rob_hudson_3182@gmx.com>
Cc: blinux-list@redhat.com
Subject: Re: Drives dropping offline
Message-ID: <20240923143934.GD8152@nntp.AegisInfoSys.com>
References: <20240923.133713.763.40@[192.168.1.100]>
Mime-Version: 1.0
In-Reply-To: <20240923.133713.763.40@[192.168.1.100]>
User-Agent: Mutt/1.4.2.3i
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aegisinfosys.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: blinux-mail@aegisinfosys.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of blinux-mail@aegisinfosys.com designates 65.242.138.29 as permitted
 sender) smtp.mailfrom=blinux-mail@aegisinfosys.com
Content-Transfer-Encoding: quoted-printable
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

On Mon, Sep 23, 2024 at 08:37:13AM -0500, 'Rob Hudson' via blinux-list@redh=
at.com wrote:
> I run a small data server with about 9 drives attached. Every so often, o=
ne of them will just ... drop offline, with no warning. I can remount it, r=
un fsck, and it recovers the journal and mounts again, until the next time.=
 There's no pattern to it either.

Are these drives running in a RAID configuration?

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

