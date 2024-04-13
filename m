Return-Path: <blinux-list+bncBDYPVTOXSQEBBIF446YAMGQECSWEIRI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 8089F8A3A17
	for <lists+blinux-list@lfdr.de>; Sat, 13 Apr 2024 03:21:38 +0200 (CEST)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-78ecab0ad01sf161022985a.0
        for <lists+blinux-list@lfdr.de>; Fri, 12 Apr 2024 18:21:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712971297; cv=pass;
        d=google.com; s=arc-20160816;
        b=v11DXZJpZ9bzfIdTAYoQfC0SOblDbJxxoYl1VI/xGGspDLdkpzpfoYsNFq0b4d7Bzm
         0Yw2Kh/5UJd7rEWJRH59UNdc1rwgNN01kwoGtvIjN47tUJmfMKt7X1gpG2vObhq2JXsx
         E9X3jQIILBoFSHCHsYvIdaoK6K0DO+ouo4Ksdt93rLGEXQbGD0EguKm61iO8FRjmkxiR
         wzu2rZL1a+YGI6fJ8Iclo1CfZJiMe0BbcaEUnaYTr/gnjvxFeZKooEiRWSTtkU85mAr4
         yv1fpJga8EeTYwlt15vfGzqfZfwxZ75H3/pJVvPUcDtXjSDCa5bPVEOjjhSi0U8pRzea
         x8dw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=NRqyqRpOyrDjmFmWilPfJpm0JvCpBqk6bwYjgjkq9MY=;
        fh=nq+97ZPkhjAPtmoeRnaAZGPBHQWLCsb94Uqj0ZoNtas=;
        b=oq/mdhpz5G3dQlSDu97N2UofwMPvHcxEJ2Vzi2QQwTyO7epGmFvFw8r86JJMZNxT6P
         kticLf18cQ2ULxmKOpWJLrFS6/tjfw2sHB4bu3hIfzmD/mi6wSdKQ1E6ZVK4I4W4mbCF
         qbocxEPknFqdFeNchVIDgZt5Dueukw9WChWh7QcDS57siVlILQPwkVrKZPOTT5vntQ6n
         IWmwxnqMH08RGNxq/GITy1YI3X95bW7g5qAYI7aF37v+3emFOau/s0l6/AHSkgqfTSRo
         dTQv9eqzQSDBB5EzNEwAeR+1JmbD/my/o4K7V6wH/ef4Off6gEeANcZY+UHkypLXtt1g
         KYeA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712971297; x=1713576097;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NRqyqRpOyrDjmFmWilPfJpm0JvCpBqk6bwYjgjkq9MY=;
        b=kc+eJwfjy/n1JVq9I35QOn38uEvpophbBTwUSacL92wgF3Oe+k6ag1MMmvq7MKqfXy
         8CiMNU92Xvf2bsxgnZYFef8Tl3SHgSaWSO0+Z2FkD+rDoc47kdj2MH1NJo3UwWZzOYq5
         W4Asw8s/RDYPJVsuJ48gJ+Cl1SrU1yuUtFzHD6rfk3qCzb6ubjaTjduGq4h2qxrgr0qa
         tWnuA7xX+H5N+3cuKOR9s7RNWjbf4idH30oimiKw1cVZan4wz9nfm0SYlLhfcWMwgSM8
         qKBEDVOhvgczmrcmMCOu6Pc3DmTbk6REFyvn+uwktEOwsX9LMiZz72zucYH1nNuELApQ
         Ys1Q==
X-Forwarded-Encrypted: i=2; AJvYcCVS2YiiurFXtAmlr2V9Nw6yF9XqJDAYH1JPjo5BmS9P1+ZYM1C13uSTa6kVxpwiGsgg7Ush+2M+3XWG2s7D4S8wIw5w3vB7WlF1
X-Gm-Message-State: AOJu0YwH6HXoJ3X8EgmBzelyn9AjOlFMpyVz84+Q8KCwI8F04UBqrqUD
	ltN92B35CvJR6lUBDLkoo+/9zRpteS4GxUYUnYX6tGqmk3rJedwo1IWe2tVH/uY=
X-Google-Smtp-Source: AGHT+IGR3UX18UyGSHSt73sjkqo1msKcFt50O0JyYcmJU/H+CfcKxgBcet4PWj28wL1M4BbWida3hQ==
X-Received: by 2002:a05:622a:1a81:b0:436:6da4:1de0 with SMTP id s1-20020a05622a1a8100b004366da41de0mr5511592qtc.3.1712971297057;
        Fri, 12 Apr 2024 18:21:37 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:d4:b0:432:e560:1d2d with SMTP id
 p20-20020a05622a00d400b00432e5601d2dls1915001qtw.2.-pod-prod-02-us; Fri, 12
 Apr 2024 18:21:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUxvdR4JkeyZFQ7F8rO/7B2hJM98nHMP1w+LjvmursK5j1WdJHkEvwveYadKqFl/HIdOdMhAA0Q3L682Y1tm9MVjF/lmNJlXyFYH9t4
X-Received: by 2002:a05:620a:4010:b0:78e:d334:1f99 with SMTP id h16-20020a05620a401000b0078ed3341f99mr2415211qko.20.1712971296068;
        Fri, 12 Apr 2024 18:21:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712971296; cv=none;
        d=google.com; s=arc-20160816;
        b=rq9hBIVaRJPEkuqsvW1VoQuTV0KPU4VNdgd+CzrBZzwYVCY0x0VBZokfUQJZRnKQ3/
         BZDq1eUAFTs+DQSgthK+49VbYkML5iaFBh8Ds5Ea9NP4K/41rEAnGU5T7sCHtAE2gija
         joJhjTivgbVNZDYHPGyKr+D33jDfz1LhBmeVGRaoFggaqVMtHXm7KoJ84crB6rf91+2x
         u57W5E2pZn7hggYWCGQrk/ikpE+Rxb8xgXhAFYLjfPOYkP3h3QX6NTSlaomemzgyFBeq
         OFeUFmxi4gzPKhrx3e3/vjOpue4XyQLF0L72eVOk/gX8XcW+qzl/MivB+0o5a7t6XeuM
         acaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=N89P7/l7bt4TdD3T/LLDGBAWrGJMWBD4lDayJi47NGc=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=AiOPquIaBoaZrFBga1SnuxeN9unumLncNI+rBKj5QrKZmSn6XdlMxTyUMU1BuJ79gs
         K+spaZXF0k6TAiMkZ3axCOSsfs9cW7KNeyaC7UbbW36MjKzbiQYLTfHTjA15AefWGdca
         N6fk7iicPuJ2gnOorKLn16zQKVYgGXRDmvnmFbHuMG9lez5WGx0jNiTbtI9qpmGM5uUC
         yb9lhTXjJtX++FRYckym7c9Dp8Nan1KV8tARhTeuD4pywoUHhaDX5P4/lBE0/rTb1PM6
         thkeAaY03ZhVDHvfRPE2CrMjVi7AQJjCBjzJSkZUizIpfe0XooQwXFPNB7xWPppzf9Qb
         0QZw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id p4-20020a05620a112400b0078d5ffc4913si4886123qkk.494.2024.04.12.18.21.35
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 18:21:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-606-aALDJXjTM3m11vDdgdf_UQ-1; Fri, 12 Apr 2024 21:21:34 -0400
X-MC-Unique: aALDJXjTM3m11vDdgdf_UQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1DF718007AD
	for <blinux-list@gapps.redhat.com>; Sat, 13 Apr 2024 01:21:34 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 19BA3C13FA0; Sat, 13 Apr 2024 01:21:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B3EDC13FA1
	for <blinux-list@redhat.com>; Sat, 13 Apr 2024 01:21:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 88B983C02716
	for <blinux-list@redhat.com>; Sat, 13 Apr 2024 01:21:32 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-288-BFXGEdonNO6vgHr2DWv5ww-1; Fri,
 12 Apr 2024 21:21:30 -0400
X-MC-Unique: BFXGEdonNO6vgHr2DWv5ww-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VGbHT2zMVzC46
	for <blinux-list@redhat.com>; Fri, 12 Apr 2024 21:21:25 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VGbHT2dFDzcbc; Fri, 12 Apr 2024 21:21:25 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VGbHT2Z1BzcbC
	for <blinux-list@redhat.com>; Fri, 12 Apr 2024 21:21:25 -0400 (EDT)
Date: Fri, 12 Apr 2024 21:21:25 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: wrbh
Message-ID: <6dc82d39-e194-0b32-fa22-cd3c0d308f6a@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
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

That's a New Orleans station for the blind broadcasting on a local
frequency and also on the internet.  I wrote a script that can be used to
play that station on computers and it needs mpv to play.  Other media
players won't play this station.
cut here.
#!/usr/bin/env bash
# file: radio.sh - template for new stations
station='http://www.wrbh.org/live-broadcast/'
mplayer --really-quiet $station 1>/dev/null 2>&1
#mpv --really-quiet $station 1>/dev/null 2>&1
#rvlc --quiet --novideo --key-vol-up 123 --no-skinned-playlist $station 1>/dev/null 2>&1
#gst123 -a alsa --volume 85 -q $station

-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

