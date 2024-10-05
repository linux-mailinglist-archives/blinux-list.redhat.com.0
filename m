Return-Path: <blinux-list+bncBCVPTHE7K4IOJP4CXADBUBEYIIFT4@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F54E9913E2
	for <lists+blinux-list@lfdr.de>; Sat,  5 Oct 2024 04:09:43 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4582776769asf64795791cf.1
        for <lists+blinux-list@lfdr.de>; Fri, 04 Oct 2024 19:09:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1728094182; cv=pass;
        d=google.com; s=arc-20240605;
        b=dIMrYYnkB2YbWo+fAlAUyMbSFlMnCW0QbBubcriGtx5ebe2vcuUD/RbvXlTooLAyoC
         ZYp2UknT0dmLd78BvVhz5N0euf+2VRJ17BMaWQMnROR+/vkQvWa22Q3pzs5r/2Wdh4NB
         6G7iyYk3pkJ7catWCk+KwCYoCMvq/pvznuPLl9J3IhGESGIZYzzPC5Lb3wN8Ahj6TjH/
         h40jedngkLtiKNfALoV5gUBxAuRGlgfS5hFeEd6C8pcyQGQpan9o5CNxonLI/HfzAacj
         AQaR8mk6Jre8WMnJVdIFoEm7nrA2PKhnJXnNakTNKwsIl4nUyc+P7WfCJc4DAxUJmplG
         8XAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=VypaOiIye7kM0IXBUPCiv4DLSkDxNpZSYqDGxGSIxH4=;
        fh=njje1OskNmzZGwYLqeucioHCt863yXCSyXcx+emKYOg=;
        b=jcB+qNQ43a0Vhs5Lird8RW0i05gdJxPIlyBaVHzhnEJOpP/JJinwgsiVhIJhLoHAPD
         vghrM/po9P7ba5fMRC/pOhT11VwR68cMXWobZ8T+CKMx4ABONibPQx60LP1bM7MQL6o+
         XzxwejEusphwvo7TYweX8OaEHUuCqydrE1x6J6HkQMDZ0F5loJg8b0FNe8dBBBnn/jYJ
         sDC5rfAztIlPfl/dK6Inr+MDYcnitL8OwJlmxb7S3lAbwMAdqyv6TTVTmBayhjembZKC
         btPXtbT/k9KnremkpbqVfYtqRHHSJB4Ooj0J5NtaoOrHudVpybeywTdncKQsZiZPqGeC
         jlLA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728094182; x=1728698982;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VypaOiIye7kM0IXBUPCiv4DLSkDxNpZSYqDGxGSIxH4=;
        b=a3PfrN0Z6vdi6e4UEtXiBWPwrEGuJYYqOuMPILhR4c8UQca3+3iSBfdyC3nlaTQU7h
         guqaqIuRVQXUSupI6KkrXnwS7ZcdeIgnjWmx0Nu+2AtqLRQogQFGpg0EtlV/SN/+gby8
         qwMpI6NAJkqW7E+YSMXNweeLYPuZ3FHcQvNpBZndGwPl5oVLa18jJUNjtge4bTrDFg4b
         clfDLmUKd3T5R4FKuSQVHRh7oCYlaiYMov4snVtsgBtFSRJzKHrbXxg0zmdRfK0kVyVp
         T6NY+Peu/5zzzAe1nZeeN/itgLw/zmuIjU7KnAsIOW+NEdAUfXE5JY71nsO8UadASNh4
         ryVw==
X-Forwarded-Encrypted: i=2; AJvYcCW0bYezDG3wCkquey5XTJVyOpxooTjyEvFhi5a7GpbXbH93VYDRjTzlJMkN+qmiH9OQWn1xrw==@lfdr.de
X-Gm-Message-State: AOJu0Yy2WvFmt8UqmXKKvnYYnFXNSBwR2iS7YZPw0vxWA7T6oqTJFiXn
	YbvMKM2ezWdU+ZrZHr4EWqG4m/i8d8FnkBNMZMaDD9rRE1vYIu1bJuIs/tE0PbM=
X-Google-Smtp-Source: AGHT+IHVVE790z2Rd0dx1cepD1UAlSx1Ezon8hY/1Tt9d2q7iwPNIfWwa9x7ISOrLXVxMRfFJytW/A==
X-Received: by 2002:ac8:5d55:0:b0:458:31fb:7733 with SMTP id d75a77b69052e-45d9ba66a07mr76518041cf.14.1728094181487;
        Fri, 04 Oct 2024 19:09:41 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7dc7:0:b0:458:3f09:c712 with SMTP id d75a77b69052e-45d8d3312dfls2629051cf.0.-pod-prod-00-us;
 Fri, 04 Oct 2024 19:09:40 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVW5fB7H5wdrTSrIdTI5ezwjs7eMdEAfcqmPNO4/4CnrLiSVSybnlEe8mmcsbfjkKdYnrYx+qHtuwlxuQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:1a84:b0:7ac:9b07:dbd3 with SMTP id af79cd13be357-7ae67e26f7dmr1483056985a.5.1728094180169;
        Fri, 04 Oct 2024 19:09:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1728094180; cv=none;
        d=google.com; s=arc-20240605;
        b=f7xSDRe1JFiNvrgUpE1Ui9ehz4dEDI+5gYbhaX3BsuWTdvSD+bXJ5T1vabH3ZL7CMm
         yeNWRaUB5k3nPhv7yOmsxLAzaVQOOb9BCLuLBwQRspYcd/KCRwfEDm2iykjQhz+k6yuZ
         +iKr2OJ1+oJGbmepKet/0S6mgrkBz1ppGtIus8a1g6BAXxu83sRGW6sMXLy5NANBfBZE
         ptGNgJTAdt1X6TRwVMd6ueHQ+VXlPk+y9Ei7TmisTHqqH4aFZeBgHbtzbC0c4LIUkFhP
         /ws50BFtm/SuZY3ejvje9SMvkULR6LSN6ldgKbAndtdc39vJngMEFBOn3UEUPQcyUs18
         Afkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=VypaOiIye7kM0IXBUPCiv4DLSkDxNpZSYqDGxGSIxH4=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=RdRORClRIW4U8H3TclrC2NRmV1ZETV0SHbES6eeAwFjVMVjaB0v1MR3SyKNM828CKC
         nn1XpjU2KAKWlCQu0brcOebQ4s2SO6YhkM/c6pOO0CmDIOUoqFW2+XFwW6Hzzb/82txx
         z4OZRnUK6Y6AlCuiTE/a5CgWVBs/vQALQNlBEEy0paYQtBQlsS0OS0hf1UX948lgO+Pt
         KFyz0oC7Sn0PidAnaUFjfkEhQLDL9PSsj8RlzYQwDBA1sVlNT/H9FgiEl2JxItEVaD8k
         owUwz+KPRprPLZcBux5QwMNDiUivdP6dKeEEsJc1kH2DoYGBbVlhBONrzliZjpEN50Gq
         Qsww==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-45da76eef2bsi10803991cf.750.2024.10.04.19.09.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 19:09:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-169-vYfSH0OOO8SasRZL1jw17Q-1; Fri,
 04 Oct 2024 22:09:38 -0400
X-MC-Unique: vYfSH0OOO8SasRZL1jw17Q-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7A7EF1954B16
	for <blinux-list@gapps.redhat.com>; Sat,  5 Oct 2024 02:09:37 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 742611956046; Sat,  5 Oct 2024 02:09:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 71D8619560AE
	for <blinux-list@redhat.com>; Sat,  5 Oct 2024 02:09:37 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0A21A19560A5
	for <blinux-list@redhat.com>; Sat,  5 Oct 2024 02:09:37 +0000 (UTC)
Received: from atlas.bondproducts.com (23.24.6.165 [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-638-Zp-91V1fNOejrlAB_mztyA-1; Fri,
 04 Oct 2024 22:09:34 -0400
X-MC-Unique: Zp-91V1fNOejrlAB_mztyA-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 8A9CF44FC7
	for <blinux-list@redhat.com>; Fri,  4 Oct 2024 22:09:33 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 74324100B4C; Fri,  4 Oct 2024 22:09:34 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 72A3110008B
	for <blinux-list@redhat.com>; Fri,  4 Oct 2024 22:09:34 -0400 (EDT)
Date: Fri, 4 Oct 2024 22:09:34 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: a groups.io question?
Message-ID: <Pine.LNX.4.64.2410042205440.1109016@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
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

Hi all,
For those of you both in the command line, and a member of any groups.io 
list, I have a question?
How are you logging in?
Each time I try, regardless of Linux browser, I get a "you must enter a 
password" error.  even though I am providing one.
anyone else having success?  I keep wondering if I should add a space, or 
change something say in lynx for it to work once more.
Thanks,
Karen


