Return-Path: <blinux-list+bncBCVPTHE7K4IIFUWFWEDBUBFHMUTWY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 4736B8B822F
	for <lists+blinux-list@lfdr.de>; Tue, 30 Apr 2024 23:56:20 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-690dd4cf6fbsf59425766d6.0
        for <lists+blinux-list@lfdr.de>; Tue, 30 Apr 2024 14:56:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714514179; cv=pass;
        d=google.com; s=arc-20160816;
        b=u0hgUhvdO6jQHBB7zCN42rlqjuuCR82DMoRsQVgXpaZxk84KQVjHwXwFjdFtm9ni29
         j3nI0vVSti5Mm7PUApirFvPuq3b4SfhlgQmamEaZssLA81yvYhrX5kV1PDYY32uQeyP7
         9DcixBocStA6fTB/fZMcfmfjc7X1M5t4rNfS4PyPvcGwyt3X8CwTYpzKRiRbi2hi/34D
         3mlAYP6xGVVj22dVBeZNNo4DCzFqm7tGKuzX+BeXXIeyYDVNqP+EAwCBhSRlViN13VTz
         n2jkDHvFKBN29RMCYzk8IdOuj52n0pIJnjbTBL1FSTRASaxEE4Ghq01QBSZkglod22eB
         i1dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=HgimZeCtjilvEwOYD2LJhx5cq2wAU93fqY4LKYRJ37o=;
        fh=7mqcTMPqlpiUXP9GDWD+QOmfM8QElmZ8LqpvmS3Lw54=;
        b=m4ldtRuTmQUQSCk9zCWXQ3McFze4JKflvU06KJljtxwZzoXjF7eyvxDwT27WyU4l3f
         LPUhr5uWYDn8brCYcURXbyN0eKfZUC1NkzxyExfbBMuQTREsbCPuUo/9cC3Q2E87FmqC
         bSuOL9YPokD6VX1sWE27z0x2lukHNIkT5yyEO91xY8M9gSAQKuy8U3HUJyjQ0I7iOqEN
         NP+aU/Ub+LOjUYhV6ovFYJQxZw01AmLM2i9oDz8MZNCjrcJb57fXdqMGs3RPhVfuRC2F
         7Ti+6Hg5ZjxYTeFuglex/CfiPQsGBa3ZDE5KmK6BacRQRtytwZm0bAj/+ne/QD7wTNM8
         u53w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714514179; x=1715118979;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HgimZeCtjilvEwOYD2LJhx5cq2wAU93fqY4LKYRJ37o=;
        b=Pt6F72cyy3CrkpNfgyZjz8DrM6o2o/o2ZF/icQ02+V6IcvS0YM2DM4BHo8lcYlj73/
         8qLYhljRF2uvJ5oxOGgEN7a8YyAJzIeFyt+4QuJig67aEEaAvo+GsOqw55yT/fskKE2J
         DZPMFaYVFyewfhAZkq+YP/8tWn9eKV7NJ6IKd0L9RFCeCy1eVb2a9VutqwkoO6/XPsqk
         Lwh/tsc2kSh8vxlJh5+DPqp1ZPHNEqj7pvT/AIXig8aKocjF/imdXcCuJMd5sx2iVXh/
         icHDlzGDYD+sWO5VXUYiqaew+MajYmhIEj+mA8+dmKokHLCg/q21MlZhek3JkKMIWslc
         G6zw==
X-Forwarded-Encrypted: i=2; AJvYcCUPIPaIxkIC47yPQCslPlQp9wfA/3KGn356WoJUzVBfSTUWaPbNXRNDzU/cErot1XkgQg9Ewo3WhtDFjBSIayukeFNki6Z14Z91
X-Gm-Message-State: AOJu0Yz+j8myr3xObQCdEkDtKBVL+QFwgD3DvzIFrjg56+4QpfYOSimV
	4V1rB4MmcgZVOpdLADeAKhV8QA/CPG6mxygXr2HgGKLAWd1b0nD+b+KTuRRPQNI=
X-Google-Smtp-Source: AGHT+IGBmChtrlMQ7rX7qiVxpPjoeYfhmZFfYpZ1v7Dei1rzyzL/rYaD//XIzk1MtLpSAutPJVWtVQ==
X-Received: by 2002:ad4:5de9:0:b0:69a:9e59:a988 with SMTP id jn9-20020ad45de9000000b0069a9e59a988mr799327qvb.31.1714514178657;
        Tue, 30 Apr 2024 14:56:18 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:3019:b0:6a0:ce32:35bf with SMTP id
 6a1803df08f44-6a0ce32364els45194076d6.1.-pod-prod-05-us; Tue, 30 Apr 2024
 14:56:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWbGIRDaHRnmU9fjg+/tDdEXdEzk23l+lkRZyCzbS5XLD2NyXQlai2xJiTkaioBt9ILCtR0yoGYRSDUlTwb4Iz7KLBxGRiEKldVQpgc
X-Received: by 2002:a67:f554:0:b0:47c:e2b:69f7 with SMTP id z20-20020a67f554000000b0047c0e2b69f7mr1019246vsn.4.1714514177622;
        Tue, 30 Apr 2024 14:56:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714514177; cv=none;
        d=google.com; s=arc-20160816;
        b=tm0SRpZe4YRAS/Zqo3Sh0WFF/V30Jjreo88RZq+LJWy20DWWr0BN/44S4b/wMGEzQ/
         UIj5DRR6F/1RSeuM/DEgnKEUojHL9uXZR9GWtUlPYm996FqrvBCg86UcFeNqnYSeJ2cj
         54vEw8zN3zc4+ndnFJDcCKrASBLwHaaZnxR6wGRpTfB9ou6N5YyZ0kvOwJ3oXngTAufD
         TMGC3BaG0D3tQp9YYoRwF84oH1cSYnuzWvONpgYuzkLJx+Qum89PK3tam6SiziIqknYf
         Frac04Mx2JMnLI8RZQAgPnjbSK2xpuhtwaEISSiaWl91PO8yQX7fKuX3Q6ANWPRcB6DV
         BnCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=HgimZeCtjilvEwOYD2LJhx5cq2wAU93fqY4LKYRJ37o=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=g+slyFXIzCQX3ZZlGOG0sTmRCBgWoMKbs5J8afBuFkBzFvkKrc80vUGKoPaRF0VWyc
         +4aOqGKc6f2o8933CWnS3rxO9tJKihmmCE7prHfJUlB6nzea/ChONINrck/AnfDjN3mW
         D7IX6K7fcAiMsUu4rum+h9JdHz3TBiqUyM14NXywt60Z+/SvbfPct62CnEF01b0cRr6H
         V2mo8cxFwl/AJ7WJK5Qz8Lt8m6gY8RnvFVVQy8mzpXcUkpFaL7Fi6syKTM9LqQ0AfL5E
         eCpxw5F0bZG5cVdfh1SQuVg7ByL5aMQB8zY3SudwXaxDhc/5R6UH5Ga4yY4Rl62LWARY
         Nxsg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id hr11-20020a05621423cb00b006a085b097bfsi19752085qvb.592.2024.04.30.14.56.17
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 14:56:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-537-covEuLxFMliUoVJkL1jogA-1; Tue,
 30 Apr 2024 17:56:15 -0400
X-MC-Unique: covEuLxFMliUoVJkL1jogA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A354B1C0333C
	for <blinux-list@gapps.redhat.com>; Tue, 30 Apr 2024 21:56:15 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id A060340C140B; Tue, 30 Apr 2024 21:56:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 68CB0400D288
	for <blinux-list@redhat.com>; Tue, 30 Apr 2024 21:56:15 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0F9271C0333C
	for <blinux-list@redhat.com>; Tue, 30 Apr 2024 21:56:15 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-647-CennSUt8MCWV1mvdQw91Ow-1; Tue,
 30 Apr 2024 17:56:13 -0400
X-MC-Unique: CennSUt8MCWV1mvdQw91Ow-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 34FD444FC6
	for <blinux-list@redhat.com>; Tue, 30 Apr 2024 17:56:12 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id ECAC1100BCB; Tue, 30 Apr 2024 17:56:11 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id EB5CE100080
	for <blinux-list@redhat.com>; Tue, 30 Apr 2024 17:56:11 -0400 (EDT)
Date: Tue, 30 Apr 2024 17:56:11 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: is there an access reason against using this in emails?
Message-ID: <Pine.LNX.4.64.2404301750270.1987873@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
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

Hi folks,
I may misspell it too.
However I just tried to send content from one of my emails to shellworld, 
something that previously worked..until today.
this time the error indicated that a request was made, but not given, to 
use smptutf8
Which i, perhaps mistakenly, felt was standard?
is there an accessibility reason for this to be blocked?
thanks,
Karen


