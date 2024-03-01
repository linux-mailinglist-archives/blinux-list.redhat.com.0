Return-Path: <blinux-list+bncBDP7P6HU4IERBDF7RGXQMGQEJ24B3TY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F86786ECA5
	for <lists+blinux-list@lfdr.de>; Sat,  2 Mar 2024 00:06:54 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-69057317d23sf19647876d6.0
        for <lists+blinux-list@lfdr.de>; Fri, 01 Mar 2024 15:06:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709334413; cv=pass;
        d=google.com; s=arc-20160816;
        b=M3/brd4N0c2Ff8Fb7QPJCIFbg2yyks7rlLYsIKAQNhow1NHy0nQGEdFPW1iULmd/Q8
         msxcrzvLbNsO1+q76npGUyIOzgFJf1Kjeg1lpI7/VP22IMa/tuRbt95l3ZI850KkRxkt
         +eXE3Tw8VANYyLntW+e/B78E63h70UpR1TiNOzz96Luf7hxdo924th/zbPiMNu8o667k
         AdzjrNGCX6WJ925+Y0ZGsJfUwnaPmNSvFDJo+gBrRGDKgrXuh5xq8N39qoQKusPUVmwl
         DftUms99mFurOUKsNqudBkgubdstBH2AlBypUbb32iJ65xpqZ0w7lsr2AH7xD0YW+8f8
         v+mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:to:from:delivered-to;
        bh=grvOegR9t30uzksX0EM7vZgkK5uyGCpaXtdQ28t/ciI=;
        fh=OCOT1r4vwTxL8lf0xEui7NT/4DnOpoFzzjoBCH93TLs=;
        b=TpjHLfXx6QXhnSjBvcszcE554qMCDV0QOrYvJMjati+APEyumgZ40TL/Xzz4qjMNss
         5l4/T8bjVJMowJGP+EEmK0qFEXxtB58rBsjMTKNXTj/Kv/01h4o2Q8mue2hYUfENxIMT
         BSlOqfCLTZiktP31SxeawEuTt5GXoXe+U1u565QVZo98DE4V9C8GNO6DQh9NVvYiRCtj
         xaCnmlOOoZ4uKEfIyP+uDYNvBqz1H087JkH9JhxGXy0HXQq2RGFiyMK7ueRMw+nkCLAD
         cvdoLM59S1NH8sWrcSRE9SQuIY6mn/HUIZXE0Iwfdu79SO6YrdXv/LNN0fSYP9s/dVDs
         ORPg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.148 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709334413; x=1709939213;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=grvOegR9t30uzksX0EM7vZgkK5uyGCpaXtdQ28t/ciI=;
        b=QZOdGaS0lxuCsb6DWxmRuc4XuI3jWfDeOX/1aWNjZb9cNc8ilGdvLgBRHs+qJXAPJQ
         dBQoyBcPr7xbTzeuwx4upI+uRtPxA3/cPPOsKagizgTt8ZCHklyebPlc/VNsz4QGDmd+
         4TreqssFQnuWOH9lntjCBbVKWmM08HzLFNvHx7gvpa0d1jt58wyS9zVWRBLwV4gYNnfg
         TCpn5IDqPHRyKEP1gqP/jpiEmxcrRVHD65XGntQcvkieAXk+P/RgmsMMPJiizO6O+kJN
         Dk4a3QAQ81B5Cai02OLrdiIxi6cAtlXeRPr2EAieO02J1qxCeFxSBQVGKrVxNovCFHjf
         L2Dg==
X-Forwarded-Encrypted: i=2; AJvYcCV8eoxfahBOzwS0XHSdS2uPjvpZJH0SSyw02buQS8i5fPkStwTMFwVd229DwXROa1JeEHA95B2uDC99tHHeyr23wPGi6qjnWO6m
X-Gm-Message-State: AOJu0YywzYzV7ll2wkALD0tqzKID7R2NAXp9IYLUXO+Le92rDcCk+DCf
	uwdhLhKNa+yoz2a/riHiqFWXQ2l+IbQ4r1DjLbNBN2Y/TeZCWWnkg79Qvl4gTX8=
X-Google-Smtp-Source: AGHT+IEeLJ5/8QKJkh1LwSpxeTRz1iDUHfXwUUTqMihSemCb1qoOfh8O/kEWEBX7omjZ9wACe8wvSA==
X-Received: by 2002:a05:6214:4c0a:b0:68f:e861:b36c with SMTP id qh10-20020a0562144c0a00b0068fe861b36cmr2977629qvb.55.1709334412923;
        Fri, 01 Mar 2024 15:06:52 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:301b:b0:68f:12ff:973c with SMTP id
 ke27-20020a056214301b00b0068f12ff973cls1059838qvb.0.-pod-prod-06-us; Fri, 01
 Mar 2024 15:06:52 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW4Ws9Hfz9BrO+Jh6IgpkUi7+QvEzbxU5wwkSuR/hGNEr4WaCuKe7l6Xlud8B4/1IgtC4w740zQTZ0EGa0aOPuGFSyw9xaMfuei6ZNy
X-Received: by 2002:a05:6214:1418:b0:68f:cd2c:ee9e with SMTP id pr24-20020a056214141800b0068fcd2cee9emr2913809qvb.11.1709334412088;
        Fri, 01 Mar 2024 15:06:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709334412; cv=none;
        d=google.com; s=arc-20160816;
        b=0D45JiH5iTTqwP437PqXyTAWug+W1nu3wHHCgyLT2KcmH935yOse0+qWmbpwP+xrzp
         NgvgU8VqVnuK9pJlsZOfVfwgzCL5f7FUG0wBg0iYd/1FCyhiMoVD++64g0/D+0E0jBR9
         2NzsRJFRmWfZEXP5wKf+5p2HoWSgKFv9NQTp/4JjwuR41hbQQ6uLoKog0cvKnyR4his1
         v5WRxkh+kMJOHhCQW9mIPbJmQRe90GGpuslRVgQkRGMaL0XG0cDIKM4+ayHdbqefzLTC
         4k91gQT1Aw9Oqi0kGnRdjIM98LWtD+KALdR49cVruftIhoAeCjFP92ZWcaUkdE81zrVS
         Fpaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-id:message-id:date:mime-version:comments:references
         :in-reply-to:subject:to:from:delivered-to;
        bh=l+bVsiPzu2He9icpCWvfJ8+J6zuvDrmO8zNy4dRzV0Q=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=SaSKNkXyYtndSDq94VH3V7k5/M5CWyh31FRJDlBAZWwO6W1O0lGKa6nP2CnNKWcKTU
         T6R1MXFoz4KDHCAlMKuoiAYe0vD+FNgRQq4mpOHOxLK5Rk6kD6LBlSnT/XnVPly2a9Yz
         TtZ7+WoJW1QHzlhyXJNaF43z7Z6QcM6HOV5kl8zcfV0REqSY7x5C0JbxowE2A7LkCwev
         eaEpvUPLesVuMqKS3sYyuaWLUnY5Sw2CXj1r1VKu01UZG/CBGlA55eI5gf6tkNs0JPe7
         6ddp4ittBjs8H/SA0YZHvZ6QnmmDB5xTI5MMZYRfQsU7Zv+0wRsGfu/RNq480LrmsXBR
         wVyA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.148 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id qj2-20020a056214320200b00690068429b1si4446242qvb.349.2024.03.01.15.06.51
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Mar 2024 15:06:52 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.148 as permitted sender) client-ip=65.20.63.148;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-142-Gqf61HrTPNqQFqo1IzMkpQ-1; Fri,
 01 Mar 2024 18:06:50 -0500
X-MC-Unique: Gqf61HrTPNqQFqo1IzMkpQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F1953806623
	for <blinux-list@gapps.redhat.com>; Fri,  1 Mar 2024 23:06:50 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 4CA611C10C17; Fri,  1 Mar 2024 23:06:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 130871C10C15
	for <blinux-list@redhat.com>; Fri,  1 Mar 2024 23:06:49 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B153D3C0ED71
	for <blinux-list@redhat.com>; Fri,  1 Mar 2024 23:06:49 +0000 (UTC)
Received: from altprdrgo05.altice.prod.msg.synchronoss.net
 (altprdrgo05.altice.prod.msg.synchronoss.net [65.20.63.148]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-93-fsDATidZObKBl3pzJNVZMw-1; Fri,
 01 Mar 2024 18:06:47 -0500
X-MC-Unique: fsDATidZObKBl3pzJNVZMw-1
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 65C6475F040EAAA1
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvledrhedvgddtiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffujghfgggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeettdeufeffvedugfevteektdfhtedttedukeetledtudeigeevffefuddukefgkeenucffohhmrghinhepshhhvghllhifohhrlhgurdhnvghtpdhhohhsthgvuggvmhgrihhlrdgtohhmnecukfhppeegjedrvddujedruddtledruddujeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddtledruddujedpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhmpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdthe
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo05.altice.prod.msg.synchronoss.net (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 65C6475F040EAAA1 for blinux-list@redhat.com; Fri, 1 Mar 2024 18:06:47 -0500
Received: from martin by wb5agz with local (Exim 4.94.2)
	(envelope-from <martin.m@suddenlink.net>)
	id 1rgBxh-000VYf-8Y
	for blinux-list@redhat.com; Fri, 01 Mar 2024 17:06:41 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: solutions for 450 errors?
In-reply-to: <Pine.LNX.4.64.2402290054500.954081@users.shellworld.net>
References: <Pine.LNX.4.64.2402290054500.954081@users.shellworld.net>
Comments: In-reply-to Karen Lewellen <klewellen@shellworld.net>
   message dated "Thu, 29 Feb 2024 01:00:15 -0500."
MIME-Version: 1.0
Date: Fri, 01 Mar 2024 17:06:41 -0600
Message-Id: <E1rgBxh-000VYf-8Y@wb5agz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <121311.1709334401.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.148 as permitted
 sender) smtp.mailfrom=martin.m@suddenlink.net
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

I did a nslookup on shellworld.net which is one of the first
things I learned to do when I was hired back in 1990 to deal with
all things unix.  This is a very important part of getting email
to function properly and dates back to the eighties so it's got
to work right.

	Internet addresses should have both a forward and a reverse
lookup which is very much like a modern version of an old-school
telephone directory.  The forward lookup is what gets done by
software on your computer when you refer to something by it's
name such as microsoft.com or shellworld.net.  The answer looks like:

shellworld.net has address 50.116.47.71
shellworld.net mail is handled by 10 mx.shellworld.net.cust.b.hostedemail.com.

I next did the really cool part of an nslookup in which you do a
lookup on the address by number.  It's a little easier, in modern
times because the nslookup utility will automatically parse the
forward IP address in to the slightly confusing reverse
in-addr.arpa format which reverse lookups actually need.  It's
not that bad but it's nice that the nslookup utility moves the
fields around for you so that you don't miss something because of
a simple typo.    One just does

nslookup 50.116.47.71.  It's sloppy, lazyand all to common to
discover that there is no reverse lookup on the address or no
lookup that matches the forward name which causes bad stuff to
happen just like what Karen is describing.  In this case, we get

71.47.116.50.in-addr.arpa	name = users.shellworld.net.

	That should work but maybe some mailers get bent out of
shape because the A record or forward lookup is for
shellworld.net and the reverse number to name lookup is for
users.shellworld.net.  The domain name is the same but is it
really?

	We know it's the same  system but a very picky piece of
software such as a mailer or group managment ackage may not think
so because of that slight difference.

	I could be totally wrong but that's the only thing I see
that might cause an issue.  The host name and the reverse host
name should match perfectly and these don't quite match.

Martin

Karen Lewellen <klewellen@shellworld.net> writes:
> Hi folks,
> This one is frankly new, and I have been using computers for a long time.
> 
> When I post to freelist lists i am on, and some private ones, i am getting
> a mail delivery error stating that the mail generates a 450 error, with
> extra numbers. the error stated says that the service, freelist for
> example, cannot find my hostname. searching seems to suggest this means 
> the
> ip address does not match shellworld.net, or the reverse.
> 
> Any ideas on what this actually means, and what I can do?
> Thanks,
> Karen

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

