Return-Path: <blinux-list+bncBCVPTHE7K4ILPZUOVMDBUBDDJCZM2@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 830D57F9563
	for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 22:06:01 +0100 (CET)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-58d41146615sf2668659eaf.1
        for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 13:06:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701032760; x=1701637560;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/tSGHNaiVD1wuew9qBVNBUT7TZ4iVsfTJTyzWIuLjmU=;
        b=In49NJKmxQ1m//Mb98gyMwURZsV0MyqsVn2wSVa4cEQoa4L4zU006GnnxUGxzam4Q2
         6IkTshOMxlOFBEuY5ymvkFFv96lzJpPqOBxXOlv3ZP0Yhu3+yWuuvieYYlN8kG85GvGR
         qEIEfq0sk7O/Wso73D2pEdLbVWUM8HHkgM1Z2HynYE3Lq5+gaNGZxzEvDXA2+rdp7v3p
         w6ET4mG9dVZsfiOh59Hm6EhUB0Hf3C8zcZOTgcXX32+TCllygbx4rcXEAhMB7sb2HkVF
         GLG2s/EhvXrIGHmlhojykUpejaS+Az6qdgDQYTnhf43QdqFiYgKQ18439G59L1X+wo6g
         NC6A==
X-Gm-Message-State: AOJu0YzGp4CPG3E43hxosHdHJjpXLVZhUlQznKXPFaIuU2orXAB5Swkn
	qhukU4pFTvF516Q7aFTMXue/wg==
X-Google-Smtp-Source: AGHT+IHzxef7a3mmQpuVGL7bsuG3lysNNPmWTicKII5JN4jQJVFjNcYmONIBgOavM5eVibeZ9t8+Gg==
X-Received: by 2002:a05:6870:6b89:b0:1e9:b495:bd0 with SMTP id ms9-20020a0568706b8900b001e9b4950bd0mr14709096oab.8.1701032760155;
        Sun, 26 Nov 2023 13:06:00 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6871:7b12:b0:1fa:1717:fc5a with SMTP id
 pf18-20020a0568717b1200b001fa1717fc5als1392573oac.1.-pod-prod-08-us; Sun, 26
 Nov 2023 13:05:58 -0800 (PST)
X-Received: by 2002:a05:6870:9f8b:b0:1f0:d96:8d9c with SMTP id xm11-20020a0568709f8b00b001f00d968d9cmr13451902oab.9.1701032757989;
        Sun, 26 Nov 2023 13:05:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701032757; cv=none;
        d=google.com; s=arc-20160816;
        b=oc1hkOeo0hivwXazdJsasTFpQbpkTa0C7HW4tm9DioDF0y20eKPviygB8pU3BjPR/I
         /j7HI/7UFtEYha09scx9rP6OPqyFVVlWroUn4kHMxaZuNVTgqSxviYzd+Q+TqRxTTHZL
         6ECMxK3jYs/FjNPxLKYX9WulDzL+yp+SsG3bqcjgCFTfGJQwii5mV3GujfIIEtok8oi4
         Nc0GhoCs4EetfH0OaEXp79+BkfO0GjfAFPKgXU55hCd7eK6+ZQwTNEAznMvtjiEkg1bz
         geoVOX0t8nuhHYmruoi9b32ZjygNEli+J1rrlzfX81PEjEEAakJa6kOH2TYVQakVZr7z
         HxIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=/tSGHNaiVD1wuew9qBVNBUT7TZ4iVsfTJTyzWIuLjmU=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=n0HY1S97bzZ6ac22AyMVFdBiTuA7S+nIItgcAq+V8QqJTkh8w6WhuIBMIHi2cnY3b2
         VYd5JKD92WnpREepR4FPORhdHW6XIju2ZEbUfleUu8E/Ea/X9JCL2pWJxFOFsljMTN3a
         +CeLFRYflpA8CJ1l202vsBF2tszTn9wQhhYPL1oOmvfHDy2Lqau3mvjwHmZjEKyctvvd
         sTImfyJyf2fdmXa2Dj0lRkCvFXOKrq6J5JDIakJid7q5xvjJDFnMWunUBEI5TSnHjNj+
         mpEjw1IhU+VUoLgnKS+Ds1XaCDWy7gqbg+IVMLSbAsB7XXK+7YShXWeIHjwtBdXkF9oi
         YN6Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id m13-20020a67fe4d000000b00462ae242961si2210108vsr.272.2023.11.26.13.05.57
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 13:05:57 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-592-a3gdJJcrPPuQpY-q7YIoUQ-1; Sun, 26 Nov 2023 16:05:56 -0500
X-MC-Unique: a3gdJJcrPPuQpY-q7YIoUQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE89E185A782
	for <blinux-list@gapps.redhat.com>; Sun, 26 Nov 2023 21:05:55 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id CB92A492BFE; Sun, 26 Nov 2023 21:05:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C4A90492BFD
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 21:05:55 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A92FA85A59D
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 21:05:55 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-548-oEHZioujMY6ym7lWiNxFow-1; Sun,
 26 Nov 2023 16:05:53 -0500
X-MC-Unique: oEHZioujMY6ym7lWiNxFow-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 8B6DC40508
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 16:05:52 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 5A0DA1001B1; Sun, 26 Nov 2023 16:05:52 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 58C7310005A
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 16:05:52 -0500 (EST)
Date: Sun, 26 Nov 2023 16:05:52 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: seeking someone who...?
Message-ID: <Pine.LNX.4.64.2311261601210.3668940@users.shellworld.net>
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

currently uses Alpine to access their gmail content.
as shared, someone here who enjoys email construction is seeking to create 
a solution for me.
However, he has never configured alpine before.
I am going to ask on both the alpine and  Debian list as well, but because 
I have never accessed gmail in this way, I need to know that the end 
result will match what i expect from an adaptive technology standpoint.
If you currently access  gmail using alpine and imap, would you write me 
off list?
klewellen@shellworld.net
Thanks,
kare


