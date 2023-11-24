Return-Path: <blinux-list+bncBCVPTHE7K4IJ3REAVMDBUBDHGN5SW@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9047F6B26
	for <lists+blinux-list@lfdr.de>; Fri, 24 Nov 2023 05:10:07 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-41cc5b9d26esf48478181cf.0
        for <lists+blinux-list@lfdr.de>; Thu, 23 Nov 2023 20:10:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700799006; x=1701403806;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kK0P/c/rcla4eNjQyFGh4WggSwii4wJ1LJuv9oBRqw8=;
        b=D7qDhaaHF4YJSNdECWD42D8+5JiHXdzxSydj1Mbpaohchb8dlbNY8h7wM4e2ORgRmc
         jjQCBRgt2WvxVMwZVYTbdrDr3Q1IvCqx3H5X8G0dbfFKG4eWNaWB/VreN8uazE9ajeQf
         QhhFlVtyIIbdfBChfySZy9vBZYZkOOu0NuwOFCVSr7oKlglXODzwl4e5cBKz9H8aiInw
         7m/uQMMw7a/osbK3pmst+YRRZ163UWAj0pSFU7JXv5xvTGDKAtrczQ0+F5uRWhJvlLQM
         jYTymb7Nsm0Dg4rF2jnQT26V+RNJ56TfUWhcjkH+XyFDXOn/cqcW1XEBQw30AlEpJMYH
         t/2Q==
X-Gm-Message-State: AOJu0YzJRyg55N3Bw6NWrOTdJc5nAvQNQdURDeA93KFwQgJAIo+or2ZV
	cE4bEv8hdOrZoBYh2QHR6ZKnuw==
X-Google-Smtp-Source: AGHT+IEhD3jsROeZpPpG1gEwSK108Ta7Y2efKdM9z1qG4jaqrX3biA1bpeQw5JDpVs/mGapBOwJLHw==
X-Received: by 2002:a05:620a:f01:b0:77b:d6fe:8412 with SMTP id v1-20020a05620a0f0100b0077bd6fe8412mr7858881qkl.38.1700799005903;
        Thu, 23 Nov 2023 20:10:05 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:174b:b0:66c:ffc9:ab7f with SMTP id
 dc11-20020a056214174b00b0066cffc9ab7fls2261708qvb.2.-pod-prod-00-us; Thu, 23
 Nov 2023 20:10:05 -0800 (PST)
X-Received: by 2002:a05:6214:c29:b0:66d:59a4:a2f3 with SMTP id a9-20020a0562140c2900b0066d59a4a2f3mr6091213qvd.14.1700799005069;
        Thu, 23 Nov 2023 20:10:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700799005; cv=none;
        d=google.com; s=arc-20160816;
        b=jdkjf3PN05KbBmiwWO5xz1pAkJKVboVGbaZM/6Xj9RvL75+ZnpkdVgOIDjPqxb+SYi
         Cw9XbL/Q7Ogw3M6AxtTLstkUFhkJVWxpfIr460p32EXBpXeo8atplQTqRVgfmHm7zgts
         1l5XDQ9TvTrgZ+N3IyI67ikiyaQsYELYp/KePuTUB1OBpUb4UkA0WO0u36eb6BY0njoY
         bM38Z1ED+GQ+Zw9gkjscdW5MXPyJJOLO6+7p8aaRDHPsIFsOm4rYvDuTwQzLCFeDzdHr
         HN+sYYzuza79XUEpYns1rpfwne9M3udJhYmXqQz8h/Ir8G0xMqCCZDeuUOdELRoYC74k
         xZuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=kK0P/c/rcla4eNjQyFGh4WggSwii4wJ1LJuv9oBRqw8=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=o+JxyGLxs2dWE6y/STEauXtypM4BjUSRmjiHnl3naWsS4hmeGvdNlP11fSH1JrINfw
         sGJBMOMSICewbzhVAiUuSsxAck90VfwbBaafasejYibWhZTvvEUPCaU3hG7Cz5d8ooed
         VUeodOW8/s+/LJhkM3fg4T+fXrAaD9OH1SDarn1v92rg7Z/U5MumYiwWq7PDKfpIiDnJ
         wRXWsyaAgxkvrrKN2KfF79aoNYBB9URv6q10mFxG6Kz2AKC02V/zb5veKjN1dcDqwTRb
         LncscQuH/uwcAeuSnlBYQLlqbt2yNXegxlZdLK+AOvlPybpDQhthqPCI6jDBguXg8+lB
         PqvQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id di3-20020ad458e3000000b00670b35782c0si2409029qvb.149.2023.11.23.20.10.04
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Nov 2023 20:10:04 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-619-_DyiSDsYNGeTy8207qFjTw-1; Thu, 23 Nov 2023 23:10:03 -0500
X-MC-Unique: _DyiSDsYNGeTy8207qFjTw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3A1FA811E7E
	for <blinux-list@gapps.redhat.com>; Fri, 24 Nov 2023 04:10:03 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 36D482026D66; Fri, 24 Nov 2023 04:10:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F50B2026D4C
	for <blinux-list@redhat.com>; Fri, 24 Nov 2023 04:10:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 136F68007B3
	for <blinux-list@redhat.com>; Fri, 24 Nov 2023 04:10:03 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-591-Pa6OZ4mXNACWPFGEFgb9sw-1; Thu,
 23 Nov 2023 23:09:59 -0500
X-MC-Unique: Pa6OZ4mXNACWPFGEFgb9sw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 101F744FCB
	for <blinux-list@redhat.com>; Thu, 23 Nov 2023 23:09:59 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id CECC3100A14; Thu, 23 Nov 2023 23:09:58 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id CD3D61000AF
	for <blinux-list@redhat.com>; Thu, 23 Nov 2023 23:09:58 -0500 (EST)
Date: Thu, 23 Nov 2023 23:09:58 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Alpine's Imap setup?
Message-ID: <Pine.LNX.4.64.2311232305210.3627906@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
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
A member of the greater Toronto Linux Users group hosts his own mail 
servers.
He is creating one for me, and is new to alpine all together.
Current question has to do with telling alpine how to add imap related 
folders like sent mail to the folders list.
Is there a specific imap config file, or is this done from settings option 
c?
also what about certificates?
thanks,
karen

