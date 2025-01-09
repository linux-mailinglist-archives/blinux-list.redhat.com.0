Return-Path: <blinux-list+bncBDGI3AUYYYCBBBU6QG6AMGQE5US6Z2Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id C1787A082CB
	for <lists+blinux-list@lfdr.de>; Thu,  9 Jan 2025 23:34:48 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d88fe63f21sf3442356d6.3
        for <lists+blinux-list@lfdr.de>; Thu, 09 Jan 2025 14:34:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736462088; cv=pass;
        d=google.com; s=arc-20240605;
        b=ju+V7BWVKM4YPLgUi8XiypionC7pTPZ+GYEDn4rRTtkVh5qSXEqeNL9gFAjUnIkZGT
         1BR2guaPxzO4Kw/WbB8nTVKEE6JAZN/aLwgRDVwesN14uK2Lis6Qt+DDWkRFMLFc07GX
         s11Oe9RSWSS2Q3eJ9rHIDK53hfmK9+xoZ18ImKZQkmvq5k0czxHH/TVDXglsh2NYwI9x
         xQg+tnkuov6jSXkcKlzouEkMu2cEXyEe/ghP679+0Fyp/UGhpYz2N2PXSxr2BlIX7HzZ
         Z6hxcjrMp+u9Fm5tSLoUgBywWdYVcDMW78CnUipfzoehZI+PsNGjjrb6q9lC0lg2P8dW
         ltAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=AG2K9+Y7iGSry8AbtmAQrJ1KIAd9tbt6vKlzD5r6mzs=;
        fh=QYJ6WqZR3kAiO+bDK9C0VnxGn7vOHTBRfmtXdDvFJ6Q=;
        b=SMeABG/r0m1QobAU2YnqQlusLy+QnzwBOh1SXtGlbgy/ZsLMPlJg1gABZtEbvowPf0
         LTU4gpw4yAxJExi+sK2M7yYgIMmj2M976LyUtc/oGSad7GBcasVaXH+77Kz+UC0oacqG
         01sTPL3y/HacoSLHc9JgDMgEe2Jw/aU8tg2OiSVK7QFKDzoOvXw98SEUYcMFugn2GMcR
         j+cdd0BEO3J0XmiQ3IA+QKqRx+2g6FjmCB4tZ8EMDX33Ggrdt1GwyN3/rgKNFD0FPRg5
         SD9OStljHnc40vVCw+tX52RBNlml0umX5OiGrQbzkJN4MuT6hxBy9SxRWWR+BDIuLOpV
         hvUA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736462088; x=1737066888;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AG2K9+Y7iGSry8AbtmAQrJ1KIAd9tbt6vKlzD5r6mzs=;
        b=rKrDl9Gz1xTozsIKVa4PiMyvPqz3F7TXQR0wIdZItboLQqaS5NNQZf+VrHusDHqykP
         cYHmMCkb50x7b7gwV/+/YFIchri1bi7lUYqs3vPXNd8y7bjXstVgZ6/SIfPgx9nI6PkB
         MkKsskwEGKgfXmQUsdb3R0SMOgyWdlZzaabZ93G9X/XqoEZX5DXQTofAAIn5OAPbFeDM
         VttIw9AtFRrkzDFG/n+9FDzx44srAHaLKP6O9rFIjNgdMou1ZMAGkMTseFE83yqkw0Pi
         9mVY01tfQfFhVBwrkxKwZpjmmVDw4hTG0KGouVKhZGqQWCcabfTU3XFUCD0qQSEWAhWJ
         T3UQ==
X-Forwarded-Encrypted: i=2; AJvYcCWj7HGTwC/oEsRErnxmlpglvz6rnAHB5OGD0SXtIpfhnM2sAuXEdJNpvqF5+l1yFUBB2Nce+A==@lfdr.de
X-Gm-Message-State: AOJu0YzD2cd1jWNG2Ct+6Y/JqKj/SP6AfDe/M64cUBbsK+lGstk/lUh7
	FbdL3fucDb+LgNDAocPCsC/fyZLeb3CuXK0IVA7/nAprOpdFBmXE5vsesknRtys=
X-Google-Smtp-Source: AGHT+IGxbuHkYwT59nIfQ94XGiOfC3hpY4MWkwGsipJ9DELsn6ogPOfcI/PbCG1y9+0495IfSDDf6Q==
X-Received: by 2002:ad4:5f86:0:b0:6d8:ac63:8401 with SMTP id 6a1803df08f44-6df9b1cf5b4mr54194356d6.1.1736462087426;
        Thu, 09 Jan 2025 14:34:47 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1b20:b0:466:98fc:1e40 with SMTP id
 d75a77b69052e-46c7ab5d334ls25926681cf.1.-pod-prod-03-us; Thu, 09 Jan 2025
 14:34:46 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVbFK9oxH/jxoMJ8DXl+6NykCvqVVrgMHSuL7MiNmqpZjCFgc8ImF8PL1SAug1r7rC2V75/1HTd6cR/Og==@gapps.redhat.com
X-Received: by 2002:a05:620a:3723:b0:7b6:d28b:42a4 with SMTP id af79cd13be357-7bcd973dc45mr1340695785a.19.1736462086115;
        Thu, 09 Jan 2025 14:34:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736462086; cv=none;
        d=google.com; s=arc-20240605;
        b=gsSabLqrFdGBFdNl0+S98lZpihuWGm5gJke2ZV91NmYy2qcyks8VC5tqbasn/2iYGX
         0WdnUcdaoW/ySGETewX76AVekXjeWq0mUjRbhOnMUpFCb2EcRNfzwxrbpXs4iResGSOM
         XZQd37jviWI2dqC+fwT9mHm2IfZAdmVJFKQ2MH2Z1lY1FjC2jf1kSBLkR6xGtvMTI47O
         V66oBPy3wcGM+9zCnARX1uiZdjSrsSW3uQWZkR1uRwcdy7yAkpfarXvV8c0ZCR6MoCFa
         IhgKLXahV44npoG4smdbAiIDogqBrchx3qqba+jysPDpcXvbp6mR5RPk++y/Y5MTEiHx
         ZcMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to;
        bh=VHulbunHBkvM6HBG1YFP6FpibQQHOZMAvXWmJOxbYgs=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=InyYL7K5GDmmx6dX39hbCcWYD+GuULc01p3BTlkXMcrm4t9ZArNEAAAG6yTYf53DAA
         T/YToI4woqjgC7ps9JuhnulZQs3/Irowwr33rkyhJgrm3R2QTc4mQ36+LObFdUK3vgjc
         D22SiydvWhCCY/rxCTbAvJgNKTbkhaOMz0upb8hM1A2MDEScE2JdAvx5ot0wthq75sqD
         UtfbL8DAhaM93rq69mj1IwpAwjiiZN6m4ChRUP7jcXXyqN1LXfW7IeWXPD7xSF7rwB5C
         2JoCJC07hC0BF62OIlT/t7gxaNA9sY0dwVCS8zojHYyeV4x2zO7Cs+jHdcN4K9eXeWEu
         AmLQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7bce322b577si253866485a.97.2025.01.09.14.34.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 14:34:46 -0800 (PST)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-606-fP4DOMYEO8qZb2T-JGzybw-1; Thu,
 09 Jan 2025 17:34:44 -0500
X-MC-Unique: fP4DOMYEO8qZb2T-JGzybw-1
X-Mimecast-MFC-AGG-ID: fP4DOMYEO8qZb2T-JGzybw
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F2A6419560A3
	for <blinux-list@gapps.redhat.com>; Thu,  9 Jan 2025 22:34:43 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id ECF3A195E3E0; Thu,  9 Jan 2025 22:34:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EAC3A195E3D9
	for <blinux-list@redhat.com>; Thu,  9 Jan 2025 22:34:43 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 30B3F1956053
	for <blinux-list@redhat.com>; Thu,  9 Jan 2025 22:34:43 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-281-L2IB15taOJCIqtzeXT6TTw-1; Thu,
 09 Jan 2025 17:34:41 -0500
X-MC-Unique: L2IB15taOJCIqtzeXT6TTw-1
X-Mimecast-MFC-AGG-ID: L2IB15taOJCIqtzeXT6TTw
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4YTfjX5m6Hz4TWM
	for <blinux-list@redhat.com>; Thu,  9 Jan 2025 17:34:40 -0500 (EST)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4YTfjX5WVJzfYm; Thu,  9 Jan 2025 17:34:40 -0500 (EST)
Date: Thu, 9 Jan 2025 17:34:40 -0500
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Google blocking access
Message-ID: <Z4BPAA0lH17FcIEN@panix.com>
References: <m3a5bzvek5.fsf@dalen.lamasti.net>
MIME-Version: 1.0
In-Reply-To: <m3a5bzvek5.fsf@dalen.lamasti.net>
X-Mimecast-MFC-PROC-ID: T6xvbYGhnYpJjUy61wQPsAU-6sAkiaLNNizjY2JmXMY_1736462080
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: gsjHyzjKhRvgwYksPrYaxXZTfB9qpe9CD1gcnnnoRwY_1736462084
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
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

Short term solution: use duckduckgo

I use the following script placed in my bin directory in a file named ddg and chmoded to execute.

sr duckduckgo $*


I just exchanged an email conversation with a duckduckgo tech staff member who helped
me resolve a blocking issue with Lynx. Short version, remove Firefox from any user-agent string.

Good luck.

On Thu, Jan 09, 2025 at 10:54:18PM +0100, Lars Bj??rndal wrote:
> I'm using Elinks regularly from a server located in a data center. Until
> recently, with no problem. But now, they have blocked the access from my
> IP address due to the lack of javascript, and the posibility to prove
> that I'm a human and not a robot. I've not found any email address or
> contact form that let me contact Google to remove my IP address from
> their block list.
> 
> Do you have any suggestions for how to resolve this problem? Is it
> possible to run orca remotely, so that I can run Firefox from the
> server, just to access Google and prove that I'm a human, in hope that
> this will remove the IP address? Do you have other tips?
> 
> Thanks,
> 
> Lars
> 
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

-- 
Rudy Vener

Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - Meta Misses Mark As Facebook Founder Fawns https://limerickdude.substack.com/p/meta-misses-mark-as-facebook-founder
Website: http://www.rudyvener.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

