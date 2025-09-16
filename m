Return-Path: <blinux-list+bncBDGI3AUYYYCBBLNUU7DAMGQE4IEBD3A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F3BB5A41F
	for <lists+blinux-list@lfdr.de>; Tue, 16 Sep 2025 23:44:15 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-77d39d8f55asf4979206d6.0
        for <lists+blinux-list@lfdr.de>; Tue, 16 Sep 2025 14:44:15 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1758059054; cv=pass;
        d=google.com; s=arc-20240605;
        b=JLp+ye0yzpHqBPBFk0VhttocWSsaQZorP0pG/3Rlq2Hz9MMKucDn0oTnOo5lD7/25b
         z2xYLdHru95Dn6yx8obomlKcajxiEijAPXFDGHbxN0laHAaf1KXHOoeYa3kQebrmyiZA
         J6l5DLLezpDQyWDNw9pU8VI/jrOlvfqbd5z+yV5YsJ4x3LJyEWDFWW0+cNqFP6Eqj5AB
         d4e/o+eNSHjgRtt9YfUQ8tKUuQPEQWx7f5X0ZIrsrj8YrlQHEftCZV5R5um30OdI7peC
         GTA+cGBkyNkXKcCaBudbUUmbJGH/ZTh4lodrAr9WqMhG+2gPwuaEz+TOYQObxsHKGhKU
         Gb/w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:mime-version:message-id
         :subject:to:from:date:delivered-to;
        bh=fQe94fTUnkp5bjDfA3AxOEj8A6Vn+4zap+tARA/jME8=;
        fh=1+Djoda4iJNBgblngMfkdH8/DiG0ME0bRkPWlbwxFFM=;
        b=S8KAgSMgkheVt24KwwpE8dYv2ixPPPsk3A3wiLB2C3ea61koMtQ8uBBAm7flhSJlqa
         FiBi2jPUPmgMhjuUPaIsS2lGwn1ueCyITVVXot6U2ysPJXxdPyOT/un9l6j0pzQXIem8
         N3bH/S+k/Fmi7ZaZEQZJV+FE1rkFwQbrXbQaAUEZz552jmFEqAc6i+myRiqYW1kQrC9+
         YjKSeaLlIExo9yosXHbkd5d5LjfXCBMGRN4DVwcj9Ho1Z/xCwm76lHZN603cku3pO2ju
         dO4dHUXTfj5ry2GWrfv/AO79NwG/j9KaMmKrxsvzKY6My42d4DJ/c63GlzGVyu/eNhpz
         mteQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@panix.com header.s=panix header.b=MM6Z1YTi;
       arc=pass (i=1 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass fromdomain=panix.com);
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758059054; x=1758663854;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fQe94fTUnkp5bjDfA3AxOEj8A6Vn+4zap+tARA/jME8=;
        b=l+YyGXGUeg+dtNY9i6RftbCWQxPS1GVJLiqxWH83kYPRFy7QQt7cd4zjR+PSNhnEqK
         B1PqgD9Tq9v6+uxo10FRvwJkitvHCmaCJt8nLTHSwSLpbByBf+Xpkar1fkQ5lvqewNou
         jXUdrl9HoWEfSWE2ObzODwlu7Rp5ir5TsYGZnTB+36I5y4zssc0z7rLx5Nk734v5P7eP
         dsUOf6QwVvODZQEzgwG0IuL2tlEnjaFtQr1GQiky8IMAOElvNN4tIdZ9fpvFZvVsGcK3
         KzOCN02N6bLcCalZz3AxsKBBow701IuN1nZ1saliCPRtAz/smdfOz8RJFREQON7YGkDK
         KChA==
X-Forwarded-Encrypted: i=3; AJvYcCWFtHI6x+VmrjSwL5E/qxAAul68iECHe/al1XJlLmWsfOqKQbVJVIDBB0GR0/j0TWsZGkNzaw==@lfdr.de
X-Gm-Message-State: AOJu0YxOddcMYZTAKZklOk6hSQiQy+nYlR9jQW9ooK6iex6goRRkdm6v
	jchMiOiVcWue2p/MkSHGKAHlK74365jHbgNv+Qyb6QLZ7QKhAgrGJOSI0+V6LW4/rp8=
X-Google-Smtp-Source: AGHT+IEI5DVwMJfyXH1u6zrAV9/kwg7q/+RL0NOSjRUnAs8AiYHOQualTCLdisR263r/slf7mfdztw==
X-Received: by 2002:ad4:5287:0:b0:78e:5985:92f1 with SMTP id 6a1803df08f44-78e59859516mr15937106d6.11.1758059054238;
        Tue, 16 Sep 2025 14:44:14 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=ARHlJd6Hs//fIOZ6bAbdKe3yiLXy00nNx48GqTwtx6HVYM0XYA==
Received: by 2002:a05:6214:509a:b0:78d:5893:a879 with SMTP id
 6a1803df08f44-78e678afab7ls2838046d6.1.-pod-prod-00-us; Tue, 16 Sep 2025
 14:44:13 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUpjm8KI9HKrfthqFWDuGtkLrr6c+UUUyJP1RvAP9gzPmng1anrJLnKu0dAGlTB0vUQ2Olb70rnvpyewA==@gapps.redhat.com
X-Received: by 2002:a05:6214:5684:b0:765:5347:57ce with SMTP id 6a1803df08f44-78d5f0a2fa5mr55491636d6.34.1758059052940;
        Tue, 16 Sep 2025 14:44:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1758059052; cv=pass;
        d=google.com; s=arc-20240605;
        b=kNN0YBUxU+xXzJftE6RGM2jN96PpN5y9H9xDV3TaWI+Pf1egI9QftHip1xqD9uNTr3
         4j/jZCzRb8MjYE4mF1U6CH54sCehbm3bpVenvik101YpSj0LnQa9ChWX4F5JSBoGBe+r
         yFjJHirv4EYSiWUj2z5ViXIuxZ54Jqaug/Bnx9g7DmRabAGMLuiDW6y8nsBabFh5v4s+
         ILDIALPcu4BEiEScFYOTmTXQQpteE8VlPyIfSzpGEsuqmA3+JR22bO11iEt9EMCxFjhL
         dEYSlqN3NqkvutxmfLfl9bnx9fbLN/Hqrf8WYlC5MZivo4SYQ3dlGrXhMj+DoBeFO5hF
         2STQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature:delivered-to;
        bh=8eAFnwuGiE8rOmsqJAlst0E1dJH5PKH7GfBxZSn22YE=;
        fh=Kj8UVaEVnyEHyouH0rn+O48JfQ3t4ASYCTeVuMW3sOU=;
        b=bb+bCNI42M5Q2X11doJznb5CmBkJCdr/kSmKig40GZ7SLzbAdqB8xiQZV9ujUE2Trm
         8ZdmC14G1cWs3qjerxfZNRrMnP20U7iBVaFkXDFDP0mC14W9c2XPr+I2DbnD1NskXWNj
         5vcYanTzXOO+o9xWwjOr1iL1FSVIYXX1VAVunD/T6dLXpoCK7MrdPe8Mw9G5/MoPfo/L
         j75wlKJLpVx4DopcSinTH6OVXcIWRsGP2Lo75WckgvqMRZKktUlQLalWwnkBDwCtBwjc
         pef74CdZzUbA8pEvpsuXcStGu5D6nii4vRt6Db7GryGTS+/UsupQgRDJW48loZc8rvUv
         Q+dQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@panix.com header.s=panix header.b=MM6Z1YTi;
       arc=pass (i=1 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass fromdomain=panix.com);
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-774216e393bsi42374056d6.1260.2025.09.16.14.44.12
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 14:44:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-615-rXBd2KcFNHyy5zXc536joA-1; Tue,
 16 Sep 2025 17:44:11 -0400
X-MC-Unique: rXBd2KcFNHyy5zXc536joA-1
X-Mimecast-MFC-AGG-ID: rXBd2KcFNHyy5zXc536joA_1758059050
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9595719560B5
	for <blinux-list@gapps.redhat.com>; Tue, 16 Sep 2025 21:44:10 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9066318004D8; Tue, 16 Sep 2025 21:44:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8DD641800452
	for <blinux-list@redhat.com>; Tue, 16 Sep 2025 21:44:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2BD781800359
	for <blinux-list@redhat.com>; Tue, 16 Sep 2025 21:44:10 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1758059049;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=8eAFnwuGiE8rOmsqJAlst0E1dJH5PKH7GfBxZSn22YE=;
	b=Ib25PMyz9GTyEak4yGTzgdo5ofgs+sLhk9kQ5qgi7bkF1UJUIpkmmDIM6OzOkebzCZTcEm
	0Wi9AOod9cdVNZYK8lr/RiK7CQ+XSJMaApxB30B+ByEC7Dkxest+NFdiphziv+lNl+/o2x
	OaX3zmJ4SWOHTb4knLiLq+20jsCkll94rx2HDgGJerex1h7dlth2pxU2TTdnTtlBY8f1pA
	UUPzX2+d1emZ+keXNgbiKG1owGmTSrcXIXWLh9G1PFQhnbSpiqXwDzdcKjH7bnyvjckNgC
	gGN+2VQKEsFPpOvnKpnb7aPge8YJ5cM/869TOWBRICipoW1lmw2KJB4cu0hpMg==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1758059049; a=rsa-sha256;
	cv=none;
	b=DxDPe17aipXWAPRDfqmn3dGqu2vooTuqENL2Mob/8HcEP2RRznagYcQrL065ZufX8S24EE
	EHC4ZR93znSQJiSRhU9o303SnYTksUgMnA3oz6fb5dIz+4Rsku8KUarc8UyYxdR/dB+liU
	E4ONZVftACkk14AeVs5jAxuph6YrevHbmZkMi5xKCP4aGwdpLSzXrnS4w6BtpfLCYCwJ+5
	HdjBTihkqjYWR4tIDNSVlOopVUcjr35SrR8M8u+pA29JURlRs/WSjTnyKkY+RzXvV+S6cl
	A9JS4r34dBMOl58R91i/kwcr66hHJyaPPtI6LPKF9kwukZ39gE79yXO6K+8kIg==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=panix.com header.s=panix header.b=MM6Z1YTi;
	dmarc=pass (policy=none) header.from=panix.com;
	spf=pass (relay.mimecast.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-413-zmsTZaW1MDGNWdOfiapajQ-1; Tue,
 16 Sep 2025 17:44:07 -0400
X-MC-Unique: zmsTZaW1MDGNWdOfiapajQ-1
X-Mimecast-MFC-AGG-ID: zmsTZaW1MDGNWdOfiapajQ_1758059047
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4cRFlp6Nn2z19yq;
	Tue, 16 Sep 2025 17:44:06 -0400 (EDT)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4cRFlp67Ycz1QXM; Tue, 16 Sep 2025 17:44:06 -0400 (EDT)
Date: Tue, 16 Sep 2025 17:44:06 -0400
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>,
	slint@freelists.org
Subject: 16 G blank sound cartridge came with unknown file system type
Message-ID: <aMnaJujl6OXrhH6b@panix.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: MgYt4Orv-OfwMT9V1xN-B2MNObAOZ6Xfj-osE2WYJ24_1758059047
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@panix.com header.s=panix header.b=MM6Z1YTi;       arc=pass (i=1
 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass
 fromdomain=panix.com);       spf=pass (google.com: domain of salt@panix.com
 designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
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


My slint linux system refused to recognize a 16 Gig NLS Sound cartridge.

When I ran fdisk -l, it  gave me
Disk /dev/sdc: 15.11 GiB, 16223567872 bytes, 31686656 sectors
Disk model: Talking Book    
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x500a0dff

Device     Boot      Start        End    Sectors   Size Id Type
/dev/sdc1       1948285285 3650263507 1701978223 811.6G 6e unknown
/dev/sdc2                0          0          0     0B 74 unknown
/dev/sdc4         28049408   28049848        441 220.5K  0 Empty

Note the unknown file system types in the sdc1 and sdc2 partition descriptions.
Possibly because of the unknown file type, linux didn't auto create block entries for /dev/sdc1 and /dev/sdc2,
so there was nothing to mount.

I finally solved the problem by reformatting the cartridge with the parted command
for a fat32 file system and loaded a bunch of books on it which the NLS player recognized.

But now comes the question, what was the unknown file system type and is it one that slint linux should
recognize?  Has anyone else encountered this problem and resolved it
by incorporating the file system type into their flavor of linux?

-- 
Rudy Vener

An audio release of Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Serious Limerick - Charlie The Brave https://limerickdude.substack.com/p/charlie-the-brave
Website: http://www.rudyvener.com



To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

