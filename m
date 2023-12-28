Return-Path: <blinux-list+bncBCVPTHE7K4IIHHFUVQDBUBH2NITEM@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 450BA81F4CE
	for <lists+blinux-list@lfdr.de>; Thu, 28 Dec 2023 06:56:21 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-67fba6829dbsf61010646d6.0
        for <lists+blinux-list@lfdr.de>; Wed, 27 Dec 2023 21:56:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703742980; x=1704347780;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LpyswzZnEqG72hTaZOAjZ8ARFfoh0bTI8eirOUjUOeQ=;
        b=Jpk1Mn0B2RyKasCf28+0yGunkvc2ltFEki5OcBAFFQk26vVc9JxCLPCwR8ish3+z2o
         QcuiDQJ98C7y1KYi9rOYS7Fci/TNNThDpPtUaHXm9dl0/ISPMTp6E44lEPqTz7/4rusF
         B8MMl8EtCkDHpbiaFQDj6oc74K13hG09QYXxi1IuDbcXY8zGTR+ZuuCcdA0ReayNkUMk
         oiKwyukfJhWz+QjvHF+dwlhua8ti/LohbY0whb887pBpbtt/24MtcLkl8PYa1bDh9j74
         GA4AFJjbjmUR/jLDBvmCb21iJ7t4W2GxlQjbT+7Xspl6t06DQYTRxZnxz8IOxoNWOMOG
         pymw==
X-Gm-Message-State: AOJu0YwBhdC7UQ3zqvuXFmzeKBYFj2crrOQEn5GDSzHhMPrPArLfe40v
	fWfxpU4rDtsZUCZMM6hmrG3z4Cv5HM43Gw==
X-Google-Smtp-Source: AGHT+IEhn2u/G7Zwmbr0RiqDpKQ31MqjGFnt0nBcPfDuyd587szETxqHpKnvyNZfCzvmX4XoFIsgMg==
X-Received: by 2002:ac8:748d:0:b0:427:ee33:4d3 with SMTP id v13-20020ac8748d000000b00427ee3304d3mr2896094qtq.13.1703742979838;
        Wed, 27 Dec 2023 21:56:19 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5d10:0:b0:423:707e:9eb with SMTP id f16-20020ac85d10000000b00423707e09ebls1193975qtx.0.-pod-prod-00-us;
 Wed, 27 Dec 2023 21:56:19 -0800 (PST)
X-Received: by 2002:ac8:748d:0:b0:427:ee33:4d3 with SMTP id v13-20020ac8748d000000b00427ee3304d3mr2896076qtq.13.1703742978950;
        Wed, 27 Dec 2023 21:56:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1703742978; cv=none;
        d=google.com; s=arc-20160816;
        b=I3/4IvHr6AsUZVg6VKxlUZZK2kvbIpLtNad67uYz/dCfM7cF0fdygQzuaDz0oO+S96
         7D/kW+TDn4E2BCTl0S3igWr+1hbeH2RxiZCxTXBqK4c1QI6eYnc19zsXAM83YKeqF0RD
         ttxEbiOs60MOu6lQS/p7a7mTWqBji93sQ4fmuogbgE/Lt/9sLwdEDfYNhe0i/NY0ZM7s
         OBWUX95R3bFY8SPXCtkRmwwGM7aYbS17dSmhPJQNeoI3aZ7kRS9rA76hkwoDE5EIXYOJ
         y+Mgj73UBkMIFcDrxfld7jews6CA69bvq8jdYyMDWV/k75ZHHhgnLHz+q6gOIJ6ZSI3c
         pfWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=LpyswzZnEqG72hTaZOAjZ8ARFfoh0bTI8eirOUjUOeQ=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=uMNRgf30lyGwenhZz41JUqk6CuXfUq015cJENV5eprodC9i5hvo0S24zLLXNeRrf0d
         bPD2xLUO+rP6p7x7fODt7OOt7WfV+TFuvpqu99an6/z8wIMCdW5pH7e6Ynw29GY3pHio
         y9/TXwoNTRl3angAiUFPdg8rDuTZdkttfRthDE98SeJ3wFC5tlVnpQfwavnq4vE1B3s7
         algcc+WWxhgvm6IPFRoCBcGt5qEKfBr1nbWGDRlQN2yX1F4kkfbAam1ja9IBPsHPQMSP
         Py45gMBwHP5YeGLUUcYW4h7SXySPHGRjGituCYyVPBLhi/47AMxoN1UDnKFA6ygpGicW
         JJ6A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id l22-20020a05622a175600b0042787571ec5si16474241qtk.529.2023.12.27.21.56.18
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Dec 2023 21:56:18 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-561-qeu5stj9PoGoHLEC5_CpQA-1; Thu,
 28 Dec 2023 00:56:17 -0500
X-MC-Unique: qeu5stj9PoGoHLEC5_CpQA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EDD951C0CCA2
	for <blinux-list@gapps.redhat.com>; Thu, 28 Dec 2023 05:56:16 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id EAAE8492BF0; Thu, 28 Dec 2023 05:56:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E36A4492BE6
	for <blinux-list@redhat.com>; Thu, 28 Dec 2023 05:56:16 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C7DC4101A52A
	for <blinux-list@redhat.com>; Thu, 28 Dec 2023 05:56:16 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-68-DZTEIAbzPaynk-hyhasJjw-1; Thu,
 28 Dec 2023 00:56:14 -0500
X-MC-Unique: DZTEIAbzPaynk-hyhasJjw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 6C2FF40508
	for <blinux-list@redhat.com>; Thu, 28 Dec 2023 00:56:13 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 327001001B6; Thu, 28 Dec 2023 00:56:13 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 305AD10008B
	for <blinux-list@redhat.com>; Thu, 28 Dec 2023 00:56:13 -0500 (EST)
Date: Thu, 28 Dec 2023 00:56:13 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: a question  about email clients?
Message-ID: <Pine.LNX.4.64.2312280043090.4143862@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
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

Hi All,
Going  to ask this carefully, so as to avoid confusion.
Given that there are different email clients, alpine, Thunderbird,  and 
the like, what actually determines how email gets managed, the client, or 
the source?
there is a member of the greater Toronto Linux  users group who has set up 
a mail server where I use alpine to access gmail.
However, because he has never used alpine, nor has he used basic html in 
gmail, he is basing the expected sorting on the standard gmail process. 
that process does not use folders at all, but labels apparently.
as a result,there are things I imagine alpine expects to find which is not 
here.  We are using imap for gmail, but my personal experience of imap, 
based on dreamhost, still has a mail folder with  saved messages, sent 
mail, postponed messages probably spam etc.
and an imap folder which has other elements unique to dreamhost.

I would guess Thunderbird has its own sorting system.
My question is this.
If you are using imap for gmail, or yahoo mail or whatever, in a client 
like alpine or Thunderbird which system matters, the source where the 
email comes from, or the client you are using?
Hope question is clear,
Karen


