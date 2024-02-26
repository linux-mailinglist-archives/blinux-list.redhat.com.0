Return-Path: <blinux-list+bncBCVPTHE7K4IKTSXPVYDBUBFWTKA64@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 920FD866770
	for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 02:11:06 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-42e6baf78f7sf22256471cf.0
        for <lists+blinux-list@lfdr.de>; Sun, 25 Feb 2024 17:11:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708909865; cv=pass;
        d=google.com; s=arc-20160816;
        b=T0uvYdiWe0jqr5PkQA2Ympzjssx6zzg1brETnR7K7mQ8DfuRydOT0u+8R0E3vYpFqx
         qaAp+kfa20Uhltyx5jcq172kOEek7CbyXbsIGbxaKmmBUyIoTrSCGfqmhqICqlNDiAIU
         +7fgeVj7N4H2vGrnk0joXvJXfZiKGYcXuGH7BuxllrGjGZPpwAiUQwzT+CeGftSDoTvB
         b9Xfc9SHVmI6/lbe3caymHu7uZxsrX5H5KL+V8VvuBxDId3KiNhjIGH6YB8MO0lLs8A2
         B7wX6tmOiz4lkGEh8NJIBdg1+sOYaEewPkbiW/2ChQJQ17gnh0pfbRyRYaU9bbOUBwCx
         KMEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=nYt38qMqGrOCMjzrSwGsuG1mWMCb1JvCoPOdqgxxzX8=;
        fh=uQG69CYyWbLn41prgnGAfa34HNPx7dloWz/JKuDzG98=;
        b=PJBydesByWxX1cbQuKJ8sLrl9JWPF3KzfPn93P2T1lzPyxiM0xsrBNhdYM67ztp5UZ
         T0H1/xqTEyGTGtftNUS2jjIGl3uv9nj7z3mRnJhnnJlzO4kXy3jkxG4LreZs7W8HaIvE
         Dh+IaDeCltjr44p6iRA98f7VuNQPFTn57tfqIA5q1gydensE8gZiNLad3eRxUoM6nRJz
         9/VV5KaPVwBl/hmMaseH1WIzKv9VGPEXt6fvpCtc6GAu2bnIPrbtLbPt+PDAlwZa0951
         GyZEEM9bN/wEvwvtsihvG4joH9KibEQLFdqplU0+dQiE/qERGaXVnUmVJFiTeBbBzGKh
         TqDA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708909865; x=1709514665;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nYt38qMqGrOCMjzrSwGsuG1mWMCb1JvCoPOdqgxxzX8=;
        b=esAwdFbaOEJ+XdadAHqpDKKCYfCOrdbDEkqnC1Cs4C58z3qUu789oc/9DmYTr+YuOu
         IM8okPjHa2Xe53aRklnVxoeZS67aoAwumIeZ2FFim4w3Edt4sQZO5j7AWrjOFD8JSK3T
         NXS+zkfX6UDUF1o7daBcysOce4U6vQlI53VsQVrR6ryEVq6zSAMMr5aT/UHo+jv2ELC+
         wiZ6TTFcG+eIgAUHyUkNVHDY6rMCp7aXwoGaKBH+LJFEVSxQJMdMhppfcNVDxIc9HBpm
         mpLnuiq771epr8InshmdJHGW9YXmhDYUgJtRR3/7tveTrlxfgXRz5WDv5BR+ToH47aLJ
         diIg==
X-Forwarded-Encrypted: i=2; AJvYcCVmbqVwNqU0DDrlw6TR39KXCqgXI1oXa491n7MqNSi8HZF8A4HWmUfc4egz+HCfHw8mQi3NGfVr31qEoU4uFdKkyArrbAzbONoj
X-Gm-Message-State: AOJu0YxBFhyjfYmvXuJWAbbRIXzkrmnFuKf0zKp1v3c2HwfzXzDhdki/
	7ea3Dfirhcqmpvi74qIUJTbBzTW422UQ8skv76hWGC/v1tyRHCq3RYttQ9AVx4w=
X-Google-Smtp-Source: AGHT+IFYKJ7MLCb4d/7PCHlgmqc2yZhhXE9Keg4zr/zz0ah2+FcKjbyo5ir2MqHZ/OJJAkT4htdifg==
X-Received: by 2002:a05:622a:288:b0:42e:7d7e:2f80 with SMTP id z8-20020a05622a028800b0042e7d7e2f80mr3826578qtw.32.1708909865273;
        Sun, 25 Feb 2024 17:11:05 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5756:0:b0:42e:6af0:1031 with SMTP id 22-20020ac85756000000b0042e6af01031ls2656141qtx.2.-pod-prod-02-us;
 Sun, 25 Feb 2024 17:11:04 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW6MfibxGFbNHXWshp9YmXS00qODq2oz7umC54c/pSt5jzEbPV2ecWTpNdnWFg3S0wknDyxSNhtXyyu0H/7rSG97pqoj/hQ8NUQZJJh
X-Received: by 2002:a05:622a:1822:b0:42e:631d:c522 with SMTP id t34-20020a05622a182200b0042e631dc522mr6777911qtc.34.1708909864608;
        Sun, 25 Feb 2024 17:11:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708909864; cv=none;
        d=google.com; s=arc-20160816;
        b=CDNEtjL+q0wc0EOgs8Tpi9BqZSiqclSqXP6rstDdS6xPLAaoVhOybjz9wrEP0mGHz+
         5xeW9hggPeRKT81GdE7O6vTenuiaHDNA8P3sBEWkGHeNJ7CvmE6t9NBbT6M1ERkO3pRD
         CzA1Wc1mi8MXLva7P7lcKEnwlJQCpCH08ZnQxf9Pxn9mIedK9g7EM/3Dc0eJ7WtvTxRm
         kU8k6D20JvtOPe/n2UqasgCuabhk8Grm3OzG/rX49cMBvueRZEnY6LUVqrrLwq9PaFgq
         u7hAiq3djkvcFvk/gD3+cMJcO/sLxuN/b9/Q5xBnT5Wubcga3i5MKQ+jmTDvCUkGlIb2
         YcZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=nYt38qMqGrOCMjzrSwGsuG1mWMCb1JvCoPOdqgxxzX8=;
        fh=afeQqVKmYf9Me5LKKoc1/L+JG9TzQiygF/Tjngx+Kf8=;
        b=WfMPRULG+zdIGKTtQMmUAB6VEax8+n/igcRkT+yER8JuXl2nq5OelstoAs4qQ/JFc9
         bjCUi9r49Feh7A/W5AhKS7eZ5f9LB7kQKVi/osBOEoL39vGpXa5pINb7jQ9rFFiD796k
         lBAYW6wTCMyxYIWe8Bp4xlwaM9DKN45a19RFgQ97RAmP0YT5tHemVdgO8eGt3mXyZ3Wy
         0Mg0g3EFMxJHCM0+zqYWY0ItNCklvTwkIZCiTY9dngpfV26m29iCvTltEViSnz241YoQ
         stFEo8YT9aB7i1Um+kfwJH77Uw00Z95NoxJ/r3VOcRugbq8h2DCXyx0pXTXqlg5UtFgq
         RHNg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id r7-20020ac85207000000b0042d7adcdc22si4006137qtn.651.2024.02.25.17.11.04
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 17:11:04 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-681-bvIlLwBoM8yTm_W3CHYW4g-1; Sun, 25 Feb 2024 20:11:03 -0500
X-MC-Unique: bvIlLwBoM8yTm_W3CHYW4g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9AFA2830DCF
	for <blinux-list@gapps.redhat.com>; Mon, 26 Feb 2024 01:11:02 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 97C77111DCF3; Mon, 26 Feb 2024 01:11:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 607FD1121337
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 01:11:02 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 144A782DFE4
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 01:11:02 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-57-Y3EMzquAPP-5KIUlgYEb-Q-1; Sun,
 25 Feb 2024 20:11:00 -0500
X-MC-Unique: Y3EMzquAPP-5KIUlgYEb-Q-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id C10244050A;
	Sun, 25 Feb 2024 20:10:59 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 84FC5100BE8; Sun, 25 Feb 2024 20:10:59 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 84A0310007F;
	Sun, 25 Feb 2024 20:10:59 -0500 (EST)
Date: Sun, 25 Feb 2024 20:10:59 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Rudy Vener <salt@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: solved, is  pandoc and the docs format?
In-Reply-To: <ZdvfpQXrW8k516Tq@panix.com>
Message-ID: <Pine.LNX.4.64.2402252008250.898187@users.shellworld.net>
References: <Pine.LNX.4.64.2402251934330.897574@users.shellworld.net>
 <ZdvfpQXrW8k516Tq@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
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

Rudy's idea to use docx2txt worked perfectly.  Happy discovering the 
program  is on shellworld.
As I use Wordperfect getting things into text works best for me 
personally.
Thanks all,
Kare



On Sun, 25 Feb 2024, Rudy Vener wrote:

> Check if you have docx2txt installed, and if not, ask shellworld to install it.
> Once you have a document in text, you can convert it to html easily.
>
> Rudy
>
> On Sun, Feb 25, 2024 at 07:38:51PM -0500, Karen Lewellen wrote:
>> Hi All,
>> We have pandoc installed here at shellworld, with my using it most often to
>> convert epub files into html..then using lynx to make those  text files.
>> I have a d. o. c. x. file however.
>> previously I would use basic gmail to convert these, but that door is closed
>> now.
>> Will pandoc change  these into html?
>> Because the format if not actually a word . doc file, antiword will not
>> convert them.
>> Ideas?
>> Thanks,
>> Kare
>>
>
> -- 
> Rudy Vener
> Website: http://www.rudyvener.com
> Check out my latest story: Downgrade, at https://www.scifishorts.co/authors/rudy-vener
> Need a Limerick Fix? Visit https://limerickdude.substack.com
>

