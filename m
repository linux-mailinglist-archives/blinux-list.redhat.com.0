Return-Path: <blinux-list+bncBCVPTHE7K4INHRPJWIDBUBCTG4LN2@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F99C8D6D09
	for <lists+blinux-list@lfdr.de>; Sat,  1 Jun 2024 01:52:53 +0200 (CEST)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-794a0a73d75sf432237585a.0
        for <lists+blinux-list@lfdr.de>; Fri, 31 May 2024 16:52:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1717199572; cv=pass;
        d=google.com; s=arc-20160816;
        b=q4/sFvvNLM4w2yTafgIU2XXD42+PmKBBFbBc1kPjZ5IyFBmBvHgi2LFvvlvNBK3H3B
         LCCZ579Ysc+ALDImU0ZKF8TQdo0KBH33Au7nSPQi9NtFH0pOAvRCRkPIYwGt4WrN+srD
         XlJObA3Po0YIeZGlG1QRZbpj/UIEKtr7vopBibdJuvTW9Wx5X2YP1kyYEkZvvAm65LQf
         14FZ+7B3O6Kz9KfmeIsjZ2BNTpJc9c/+l0Le0MlbkIwemykzRoaHgZeVZfhAD4GKRsNN
         pOoP75eRHxU+iLpX+/hq7wJBEmFV+NLW8Gooyr+g73pYET5ftehJm3bXBf1G+tsgAN3U
         hB1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=XWod3/xR/UTpT/ey7eLQ20Gg0A5E0yvyUViyfy2Ulpo=;
        fh=fBoDmWcps67BMx/UEcySvPEBduKejPt42XetllXSQwM=;
        b=FRVV+Nc406CVrISfhj1GpIk6yZ4+i8iYSyZuJAlYdyhoB5NNyHVIvH+MTxN002tVt7
         kw7oTA5tZxvBWylNfcTQQ+93UyjDAZ2c/M1NkzVJCxdYbPfbOUPUz64OVfmPYIkjUjoi
         Ese22H942qfd459NuL0cNK5uACRRUz8lO8W7dpBskVfdw2OQBI7aGt7xvlPmJ8SUVxHX
         9ATURpxzCuHRmrhMX0c0pA/NzkxDp500I3ACapfJlugwCjubxfQW1VvpY5W6nadjkgLr
         8JWOSZK2LHHZnW+Zqd+pPRuq/3trTtUL3KPxzbNqg0eHbeDaI3ysR4ActdTcogjpDS+r
         CzMw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717199572; x=1717804372;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XWod3/xR/UTpT/ey7eLQ20Gg0A5E0yvyUViyfy2Ulpo=;
        b=RC+QE2fK947/RLfHwCQpfZvVCmQdOUxnFX71G1f+KlsUQlTies7ELqcplNp8NjD+7m
         SVBWdcTNI2VpNcRvfbOE3DY1HAcrXuFqJ8J4yqeI7Yc8vn1sA7MxTGTyliYdSyQ+Tqnc
         HotDXDSOX2kup8ekwvOJLsg9KIf4Zu1jcRxilH7Qg+L+p45tD5ehZnCpRBTNvQcUQc5O
         UUquSIapNkMNni80m+s3SfryR489tKnrxDIhlOq2s3JPC9xyeF+zuxq3PX+rW3kntyV+
         OOG9yyo1Caspy+fLdJyAAHQ4Xm20WIawnqCBBOB2ku1Jsmzw3ExJVw/WzoPSzhjKUZKg
         kjUw==
X-Forwarded-Encrypted: i=2; AJvYcCXLyb4Q/6kMfc9823JpyxD9D+a1U0um7h6E2UT4dq6GPumjQGoPTjwHg2nIs7qHUTzDiNDOPKwPfkwO7x90dI/TPtoMqG4pj3rM
X-Gm-Message-State: AOJu0YyQlr+ZUqc00enn0xX7jc3pKtCPcfSXSQ+kpFadU1SvW2k4Y65D
	s3X7nXmD57kLHy158A6XrIp9gdTHuwznq07MNNSwz0BhuvnvI58unTjCYmb4NTs=
X-Google-Smtp-Source: AGHT+IHjOkwU5aAtqftAxV2bQ2GnzL/mny+x4QnCfJR/JxBneXEku0PzpJAbfa/vy7VEXMHEC8sa6A==
X-Received: by 2002:a05:620a:a08:b0:792:ea2b:5f70 with SMTP id af79cd13be357-794f4f740f9mr569910385a.11.1717199572199;
        Fri, 31 May 2024 16:52:52 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1898:b0:440:29:dfe9 with SMTP id
 d75a77b69052e-4400029e34als833461cf.2.-pod-prod-00-us; Fri, 31 May 2024
 16:52:51 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVEfe8M/0Yf29dbYS6h3LHThNx1lg3UPL8NBu5bUaHd5Ignj5R+Ahbg0zm88GAdYRPhvDE+Kx0t0ayVDZDiQww7a3X8BEtDvMEGX1VC
X-Received: by 2002:a05:620a:400e:b0:794:b350:a4a7 with SMTP id af79cd13be357-794eb07428emr998173185a.31.1717199571173;
        Fri, 31 May 2024 16:52:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1717199571; cv=none;
        d=google.com; s=arc-20160816;
        b=l63s52hdj/K3kndo93rL2oXTBHXpNNt3kA+j9vMGx/1/vyABWJDFyhjk1+h/3sWxMB
         vjzrBsieF++BTZVolTcSV4YtnSD2e36P05iJ+HigQA741tiyJO+ZP+HfHgpW+AmxU6vj
         atx4xaMq4wsrrQUhsfDDUSwzxP0AvAB9MhngR0EBQ9VNDZ2K8jkb2qY/bPgtPXR4dM19
         d9XmSOtB4ZeAabDfbYFE5NGYUL5IYwl28I1uxiMDfJ43VppqOk7wiGtiK4COa8h/VW7T
         eJoIHN/vv3nMweqQ+NUcK7qmLQV0VzJ6WftCCKNrE+tBwUPGdOMR7iqnkLYnfzYfqt7s
         LonQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=XWod3/xR/UTpT/ey7eLQ20Gg0A5E0yvyUViyfy2Ulpo=;
        fh=j+bV4wrP5yQqqwG71JUT4zaE69baWNfhmp9Z4l1LSW4=;
        b=sOojnzeLuthTmHCruZS65szk+uRFkvmB4gPAoJ1ARKZF6svh5/grRDtE3lP5jiY+QM
         F38BRwGkYz93OmO7984AFgde0DOy/hLu0G1cewYrvTYiZJKWVNzCY8B1mB8TNBMm6hNf
         C1WjIkjkpgnFQCRt0pGQ0+00S5BwuqOvIFr9H9R51qsIj+rE8TO+JUkSztdxQVbVWnTR
         iuarE0unH5fiqyRvniflksSsUs1ouZr8JEkEiBg/69HeLahhXUm9fNBuJKdMlkV4lH6U
         cuZNwqY8tvMQXnUC1YyfV1aEGxqSRJraaAAHI+q92Br37IFyAcbsoljdZPVksKh/bKgA
         VwwQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-794f2f0508asi319252285a.157.2024.05.31.16.52.50
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 16:52:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-369-C8zhOEs2MASHTHgsYtCVpg-1; Fri,
 31 May 2024 19:52:49 -0400
X-MC-Unique: C8zhOEs2MASHTHgsYtCVpg-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9F2AE1944DE5
	for <blinux-list@gapps.redhat.com>; Fri, 31 May 2024 23:52:48 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 902671943283; Fri, 31 May 2024 23:52:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8DBEF1943282
	for <blinux-list@redhat.com>; Fri, 31 May 2024 23:52:48 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 10F8A1933EA4
	for <blinux-list@redhat.com>; Fri, 31 May 2024 23:52:48 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-633-uywnkGd9MYCay9F_N0rwAQ-1; Fri,
 31 May 2024 19:52:45 -0400
X-MC-Unique: uywnkGd9MYCay9F_N0rwAQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 0B1AE4050A;
	Fri, 31 May 2024 19:52:44 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 5B6261000C0; Fri, 31 May 2024 19:52:43 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 5AEB3100081;
	Fri, 31 May 2024 19:52:43 -0400 (EDT)
Date: Fri, 31 May 2024 19:52:43 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
cc: blind_linux_users <discuss@blvuug.org>
Subject: [Lynx-dev] ANN: lynx2.9.2
In-Reply-To: <Zlpf6RZ52lW3at4L@prl-debianold-64.jexium-island.net>
Message-ID: <Pine.LNX.4.64.2405311950490.2538433@users.shellworld.net>
References: <Zlpf6RZ52lW3at4L@prl-debianold-64.jexium-island.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

Current as of 31 may 2024.
Karen



On Fri, 31 May 2024, Thomas Dickey wrote:

> The current version of lynx is 2.9.2
>
> It's available at
> 	https://lynx.invisible-island.net/
> 	https://invisible-island.net/archives/lynx/
> Development & patches:
> 	https://lynx.invisible-island.net/current/index.html
>
> Files:
>  https://invisible-island.net/archives/lynx/patches/lynx2.9.2.patch.gz
>  https://invisible-island.net/archives/lynx/patches/lynx2.9.2.patch.gz.asc
>  https://invisible-island.net/archives/lynx/tarballs/lynx2.9.2.tar.bz2
>  https://invisible-island.net/archives/lynx/tarballs/lynx2.9.2.tar.bz2.asc
>  https://invisible-island.net/archives/lynx/tarballs/lynx2.9.2.tar.gz
>  https://invisible-island.net/archives/lynx/tarballs/lynx2.9.2.tar.gz.asc
>  https://invisible-island.net/archives/lynx/tarballs/lynx2.9.2.zip
>
> 2024-05-31 (2.9.2)
> * modify makefile.in install-help to only remove files, leaving existing
>  directories and symbolic links -TD
> * in POSIX environments, check paths for external programs to ensure that they
>  are executable, non-empty files -TD
> * adapt special case of gzip decompression in 2.8.9dev.12 to brotli, to handle
>  downloads from websites which support "br" (report by Rajeev V Pillai) -TD
> * updated configure macro CF_ANSI_CC_C, to reset flags on test-failure, to
>  keep options from accumulating.
> * build-fix for NetBSD and Solaris system curses libraries, removing an ifdef
>  added in 2.9.0dev.11 (report by Nelson Beebe) -TD
>
> -- 
> Thomas E. Dickey <dickey@invisible-island.net>
> https://invisible-island.net
>

