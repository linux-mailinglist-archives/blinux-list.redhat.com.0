Return-Path: <blinux-list+bncBDYPVTOXSQEBBJ4S2O6AMGQEK7PM6JA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 4623CA1C2E9
	for <lists+blinux-list@lfdr.de>; Sat, 25 Jan 2025 12:21:13 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-467b645935fsf49769351cf.3
        for <lists+blinux-list@lfdr.de>; Sat, 25 Jan 2025 03:21:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1737804072; cv=pass;
        d=google.com; s=arc-20240605;
        b=CQob4giDzQs/UetDjXYvDYPxQ6kCqvxA72XpBkF2Y+BiCOucdzcbr+hSBh1GayJU61
         tlACVBO8ZfydNzMdv0mdtAHiJKFx9KSjr7JRD6L2E3BYm1Bpawq1VKA1jH97nscNV8tz
         5TwAx05ASAtQRXUHwWK8Uj6mkGm0IAJc1h1FWp4QZZ7Aa8HrN0k5NRJibq7AycLBF3nB
         WOOhh0ESfsCMgKZMDEXyEyHXO2/p9k90bSa2zS9Iw2ce2Ghky0Hn/u4tEvryaGS9j0nS
         O5lMJInMatQkHRcGl4tV6MzcrHAVfVBEsUWje7x0zGPG8qWEz5dYOq93YAYm4MZyFIaf
         iENA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:mime-version:message-id
         :subject:to:from:date:delivered-to;
        bh=331Pk8mXm6luVEv1tNtnXHiOjRjLeNKpXnGK5LYpG6A=;
        fh=jDYXceoNikehR6AIJ170Tzw2hv1ThC4LYeLQj2lul3s=;
        b=S4xiIyJbC/3ruZgdtxbYxMS0lzC94LEqSfRySNcwQAg50W9VS9cB2YIc8W9G99SjKe
         9IwJJnftkHMzO6dmk1T9zTXduCb+PfUSOy+dThFFPkDCKMDwp4SecH+ygHStM646JB8A
         IXqQkSJFD4n/dLFdBfrJq9ntMXsFq4QJGw9MO65k5GsTIPWyvTyLLZExe8YkMaXiowH5
         HYPa/E1fZH5JeBLdh7IwxAy5G/z44Gn7eh8BTy20sI5N8ni2M4H9coIKpS+1mD7l1FOg
         7l196Y7udzNc7W3kgGWaoZumGv1I0FjmCo2w79PSyph7Hbzt5r6KHS5uU2IsZAiwKsxj
         c1Hg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737804072; x=1738408872;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=331Pk8mXm6luVEv1tNtnXHiOjRjLeNKpXnGK5LYpG6A=;
        b=YSC4M5hyVv1T2zNjyWvXjUVvZfcZn5AfT3vRH1+AdTUm46gH/WoODpjGtavnipjENQ
         f1mK0Pqq2ihqW4uxX18WB1JkD+EQ/1YMOQICE23u3doDxMDVov+OUIT6NNyE0HPaO/qD
         Zj+6FCr+J/Tv2iUJzHFlcgs89dbwlTiIENi7KArke3uMNUmIoVe09t8YfQUKBS4ncNYn
         pFgNLST+3frSEJQLiRQ5Ruzo/LahukM+yb7hCvFARmxhKCSgfZt3R7MbtPJtXL9tpBk1
         3D8XpR/FugJ6AqU+cij3CWM0vsIylJUai4I7cuM3rdYU2eHO3Lp17VB8NFmK96toAF0E
         TKWQ==
X-Forwarded-Encrypted: i=2; AJvYcCXCTM/8MdEe6GqpOIjxwlNPaLNaj3SXN8cPWPbJrfkrJZpReC6xRTWbrfBAN8ELu3CX3IYsOA==@lfdr.de
X-Gm-Message-State: AOJu0YxJy9LMXr7DKTANuA5a4IwK6aVdZfuoLG4Ztc8lzECkdSzoj2Ns
	s592eK5gSTqPtq4G3qpurgxoCva+esIkMdTs17RS7CUBtiAxUSeDHPj03zDWHcc=
X-Google-Smtp-Source: AGHT+IECjK/BJk09rz41tUWst4QkkN+mjycUq3XNxoGUQ8H7/w9Jjf8J/Mn2n16gLRy4+iyewzUzxQ==
X-Received: by 2002:ac8:5907:0:b0:467:6617:2ed4 with SMTP id d75a77b69052e-46e12b6849emr469602211cf.40.1737804071753;
        Sat, 25 Jan 2025 03:21:11 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7cc:0:b0:463:f0e:44c6 with SMTP id d75a77b69052e-46e5b3d7386ls16398391cf.0.-pod-prod-01-us;
 Sat, 25 Jan 2025 03:21:10 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUeJFtAzeX9NJmfno0Ygjiymdaf1rl419thxNkRpBZ1BdEUZhpYzjocoM2B1cH8K4V0cGqhkesdkRxKtw==@gapps.redhat.com
X-Received: by 2002:a05:622a:1985:b0:467:65d4:42aa with SMTP id d75a77b69052e-46e12b68179mr541951911cf.37.1737804070650;
        Sat, 25 Jan 2025 03:21:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1737804070; cv=none;
        d=google.com; s=arc-20240605;
        b=C9yrjFZb7DZsE5eG12DljhC2QMqYVqMbyV9gDPY2gZ/BN8p8mfl4x8FtDUb0z+UqUz
         4RBvSJHdqWEXGYpjPsTn6Z2vKo1WbG9LzrDHEUUryzgzaFm3WyH35NwkNkHUMFYZlm/C
         9XzNmsP1Xu9IWjIBwqmAxJr6M3pQjiuG1CC7Px6Dd8RFR5j85I5NaMbzH6BBe0bArZrp
         jqNdE9vFYbBjr+iv5MK+nqRAki3ACBnM5OvmowmdT3iGeBH7l4YvQAsarNywfZ4BZHsu
         mr4W0zy15SibImhZTD90G7yvoUNmI1HHNtVezl8W6cSZ5qf9FruUikPEZDS7XX4ODHpo
         vF8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to;
        bh=FKciAwAB4owDtXZeNOBkgnwFFSWFd4aNsoe5B6S3dXM=;
        fh=4fiYn6PFJS2Xthj8G0VHAPuP1PCIKTz1WUuMysKPC5Y=;
        b=Mqn7ZHRgdj2oKXFBzLBcgSr5TjN7e8jDaKfA6oZuXJXdPseN1DWZIDCDYlbiDitC9Y
         R4+B1fxoU0QYI/apJFMj+xV8+WDC4Q8jrCHvI8GN3CjwzTvjNJkn2lPBwMFhVHVodkQ9
         unir9UkZkmO2ePEv69qPvCO6TQM0D3atj1qWTW+h9bETKqh8TAeNqF3u4DYEaXLEJScP
         TfxREOfz6qfVSEEPCS+vq4G3zyigB78L7ZEx7qQJGaTJfJhBB0ANATN8JX65eExObnyM
         M1ORq5PRi+za5nIdRJjDilwNMhLXIyfqBuANQJ6bpKVbiccUR2pdw/AhzK1WMTxjXC1k
         lz1g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-46e66b87e50si51205731cf.427.2025.01.25.03.21.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jan 2025 03:21:10 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-192-MSVfZPSVPsGNLVVluPE89g-1; Sat,
 25 Jan 2025 06:21:09 -0500
X-MC-Unique: MSVfZPSVPsGNLVVluPE89g-1
X-Mimecast-MFC-AGG-ID: MSVfZPSVPsGNLVVluPE89g
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2C72C1801F13
	for <blinux-list@gapps.redhat.com>; Sat, 25 Jan 2025 11:21:08 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 2811F18008C8; Sat, 25 Jan 2025 11:21:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 255CD1800365
	for <blinux-list@redhat.com>; Sat, 25 Jan 2025 11:21:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 994E719560AA
	for <blinux-list@redhat.com>; Sat, 25 Jan 2025 11:21:07 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-533-ss0GDrabNpGeZ_qgIhvtYg-1; Sat,
 25 Jan 2025 06:21:04 -0500
X-MC-Unique: ss0GDrabNpGeZ_qgIhvtYg-1
X-Mimecast-MFC-AGG-ID: ss0GDrabNpGeZ_qgIhvtYg
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4YgC0w2Cp8z4KJn;
	Sat, 25 Jan 2025 06:21:04 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4YgC0w22lfzcbd; Sat, 25 Jan 2025 06:21:04 -0500 (EST)
Date: Sat, 25 Jan 2025 06:21:04 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com, debian-accessibility@lists.debian.org
Subject: debian installing packages suggestion
Message-ID: <Z5TJIPr-d7cs-yDM@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: pQ-pjJM1yWnWbNt9hn3r8l0lZih4hJUZU12Y4QuvGcw_1737804064
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: YfZXVtONNGN2-AmwohOi9zzjRxbfUPTycasUeZdl3NE_1737804068
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
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

By way of example, installing the ghc compiler:
sudo apt install ghc|tee ghc.sug
answer no to install packages.
You get ghc.sug on your drive and can then look over the suggested packages to install.
If a problem happens later since you declined to install one of the suggested packages when you actually do install ghc, you at least have a list you can use to get the necessary packages to install on your drive.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

