Return-Path: <blinux-list+bncBCFIHJ744YGRBDX5RGVAMGQEZOU5KRA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 0859D7DE4A9
	for <lists+blinux-list@lfdr.de>; Wed,  1 Nov 2023 17:36:32 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-41e3e4aa311sf82955541cf.1
        for <lists+blinux-list@lfdr.de>; Wed, 01 Nov 2023 09:36:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698856591; cv=pass;
        d=google.com; s=arc-20160816;
        b=ecBXozNdXImF9kheiMvssxrvSR1jau4soP3Dee1x5qb7IQC9TAuPlhz9jXm/9ZUtaR
         n/WeygisKSGgSdhVU07l/WAjGx3apifUawoLeQr7jSRcK0IZnNs/gQ0aECv+G0lQqpck
         Vv6GSzGW0UkXkIX0hUB3IPYA2Xl2dTMuNK5z21TIRRvBGH2Gh1LHRvHWxosHkbXSxJkH
         aDXOYCXdGZl8fojSU8wU8YnBxn+UsucwXNQj22ruPsS6eHG5V+jewlXdHtDSa27cNMKC
         v307JXoDIJY6xl7pS7wC0hRqwfiQ/XuFTktQC3iVAJxCq1kR63bHS8p1lC2F6s7nViWz
         NhWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:to:from
         :date:delivered-to;
        bh=wLpcRBschvBPC6jGuPY7pOa17vufl9wizV7wncLM9cE=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=jtKVdiynatf0DlQznfeAF/+Kv8vY/uf4/jZudNmFhGftxBS+ELS2c1Wer+GBm6XW2Q
         97o9yeM1okKSfSW8mHmcrc5AB/6C3XXjfO6K9XUKuqe9FDE1gmMoI/zoZdv/mV/R8aT3
         FOF3TT26leufMdiKKd+Wt1xRlfpRzPvBLlAeW0oTUc2n8qXjTZWMaavYo0XfyGRGph5W
         flthtQKQSJ9fIFd9G4JnWpj3ofuHvrbAYZSVbhGFXnKSoIIB5E3RJUwY9wLs4bhwzmP/
         mdcTIxzKvZgVyGV1wwAAcCihD/okkGE0KGETkvCNBvKuRSh0y5lEbBu0UvMAxvrid3EN
         1Fbg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698856591; x=1699461391;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wLpcRBschvBPC6jGuPY7pOa17vufl9wizV7wncLM9cE=;
        b=kw4I8zwD7tnxyp7JrO/UNRMNiArQmHtE0C+sVzUcbm2s7fZc/CrBRs60CnFgMkiro3
         ybUlF9rQ1xVEt+QBAgbB7c6PSszLsXaqk7Vg56T0RV50+un/2yChyEaS3BepjsBMoh3/
         UrrMfp2jwskcoyPSWiIAtiCOqed8bYP4FFJWwQEKRitMnHmcSNjGBsKha70tI8Vp7rbl
         H/J8gQeQmJHoyPZiah51WI+cKPotTH92mfO15BW4gGM4IcyHdDx6T2dmMAj7zkQ6O2Yw
         01HGe7G9MZ/Zvmgcr0rdK3sBcyYZ9DBxkFRjJB+0ymezITKFFnjaau5LWpCGth1kYJWK
         hBRA==
X-Gm-Message-State: AOJu0Yy+W9HDYLMwz4hTSOWt2imGxYgbXdmnUVjgFB5aQEbjJ2ON3cPT
	Cktc2+/q8ZwYlPjUxzNWF8ctIg==
X-Google-Smtp-Source: AGHT+IH2GP5odW5QyvkXBbfoj31xT2w84YRlqhdn/loBl9HzklW/OL/VZqNwbeqBDn+pvrTBY1mJIw==
X-Received: by 2002:ac8:4b73:0:b0:41b:7737:d70f with SMTP id g19-20020ac84b73000000b0041b7737d70fmr14977994qts.0.1698856590852;
        Wed, 01 Nov 2023 09:36:30 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:24c:b0:419:5434:d639 with SMTP id
 c12-20020a05622a024c00b004195434d639ls29346qtx.0.-pod-prod-06-us; Wed, 01 Nov
 2023 09:36:30 -0700 (PDT)
X-Received: by 2002:a05:622a:198a:b0:419:5162:5e0f with SMTP id u10-20020a05622a198a00b0041951625e0fmr19883787qtc.13.1698856589921;
        Wed, 01 Nov 2023 09:36:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698856589; cv=none;
        d=google.com; s=arc-20160816;
        b=aNE5sHz2z3j6MdoQ4PYwNxkqaiIekzO5TQpDhE36/4gwLptk8iBO4E6vatIew8lVXx
         lslnSfv/5raMW28jXRmLZlpPCw2AbY7SAaf8N5dHZVmQV7s8YDQwx9CMH3Y2sf18djoc
         BsZbKrN9/5Wn2CGW2PGjKfTZunAdxHtOiDiuxkoUmtU1SamY4CdSn+7WMSHm7Cbztx28
         E+E4SgzaQD8q9SqQ+BKJi2/EEiJjzI44G0lA+EWejjRObhfHmMoSmr1LdavQfv0mdQE3
         W0q44Z7E+omvF0PY9sGDQQV7gSE4ozQjwmi+Ga3yjfWI2yrbpT+c1u0f0FUwh2y1NHDu
         m/2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to;
        bh=nQ7bSdmy2/JoD+mNVGRsSXcR1eOnytngHncgDnm9DRc=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=QAtbyp/l3JDJcZhVBmwIqkXPvWW0gGIwsTqauBjOLJVQazp3hJ8fghxqY0srFcINXn
         Z13nXJEfqM8ZWeQKnlk+ROUSQ+H87+Q497KvGNIHlLH/GIuglTYhdgEcarWv5KHxstI5
         cu7IsXwXybB2djWqOYEaWjUuCC42msZsX5uhxcKQ08Y2VcDNWCKdCtJYr24t3l5fsB3T
         aXXq7zKVY3vkP9z9eFE39G6s5vTXJoZxsUcPdXAujwNXDOzhfwY3pJr5+O3thqGxzmzx
         l2lihcOQ8SVXtDXRyy2qldGhRlW4SIC1Z5BR+ErJ47xaItAe72hhcWyyEZ881TiykMcR
         a89w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id c20-20020a05622a025400b00418196f9d1asi3016790qtx.546.2023.11.01.09.36.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 09:36:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) client-ip=54.39.151.74;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-443-Bzl7fKVMPyWXMa6W1C8XFA-1; Wed, 01 Nov 2023 12:36:28 -0400
X-MC-Unique: Bzl7fKVMPyWXMa6W1C8XFA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 328E585A5B5
	for <blinux-list@gapps.redhat.com>; Wed,  1 Nov 2023 16:36:28 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 2FB19492BE9; Wed,  1 Nov 2023 16:36:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 28F8D492BE0
	for <blinux-list@redhat.com>; Wed,  1 Nov 2023 16:36:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0AFEE85A5B5
	for <blinux-list@redhat.com>; Wed,  1 Nov 2023 16:36:28 +0000 (UTC)
Received: from thechases.com (thechases.com [54.39.151.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-316---FS2WYVP5yuQUEOXLaoQA-1; Wed,
 01 Nov 2023 12:36:26 -0400
X-MC-Unique: --FS2WYVP5yuQUEOXLaoQA-1
Received: from localhost (thechases.com [local])
	by thechases.com (OpenSMTPD) with ESMTPA id 969eb47c
	for <blinux-list@redhat.com>;
	Wed, 1 Nov 2023 16:36:25 +0000 (UTC)
Date: Wed, 1 Nov 2023 11:36:25 -0500
From: Tim Chase <blinux.list@thechases.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: simple 7zip extract command?
Message-ID: <ZUJ-iVvXdYAijXS3@thechases.com>
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <Pine.LNX.4.64.2311011208480.3174618@users.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2311011208480.3174618@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: thechases.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: blinux.list@thechases.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of blinux.list@thechases.com designates 54.39.151.74 as permitted
 sender) smtp.mailfrom=blinux.list@thechases.com
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

Tim here.  The command-line iterface should speak pretty well.  You
can use the "t" command to "test" the archive's integrity

  $ 7z t my_archive.7z

or the "l" command to list the files in the archive before extracting
them:

  $ 7z l my_archive.7z

Once you know the contents are what you expect, you can use the "x"
command you showed to extract the files:

  $ 7z x my_archive.7z

The output is a bit verbose with some copyright info, archive
self-integrity testing, and some stats about the archive. But all
the output should be pretty speakable.

-tim


On 2023-11-01 12:12, Karen Lewellen wrote:
> Hi All,
> imagine some here use 7zip to extract files in Linux.
> I have an archive of a program that I want to extract, keeping all of the
> sub directories in tact.
> The file  was compressed with 7zip, that I have not used before.
> My google  suggests  something like
>  7z x file.7z
> will do the trick, but wanted to ask as I am unsure how well the program
> will speak.
> ideas?
> Thanks,
> Karen
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

