Return-Path: <blinux-list+bncBCVPTHE7K4ILHI4NWADBUBA4LJQJC@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A27F88D1C8
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 23:52:36 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6966412d4dbsf4175066d6.0
        for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 15:52:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711493555; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZSOlMtbGtqXZlVMXubmJyMjBXHPZnCxHO97fA2sMSX68+233wRvybzQDMP7JBLHFgl
         gHrFy2upcHvYb6gojI4r/Ukl+yLbb/xLyx52qkCxMHpd89t/CbyabvVVVqdnHJ0VUXjd
         7MIRooxDKeqQ9r2Lrh+L46l+nmpK8rQmSp9q6W/cXIsQzyU1qssc6k/HcN9CbsQ01cqT
         4EgNra0zI9ICnR6XWtElg8rqIgRQJ3DyfCKHIZ5vJLvDWnzVPgmHXj4C+py/IrjBjaIU
         e04s5MmHNQ5nAxTFloqXhrMXDJSxCjvBc+O4KPjyk5pcpLRnU5Lmp4Thp+BGRZp0obBS
         oCuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=1J539zeeM5P12u3LrDwibcOY0HKmxP0FPAep/wgAKmU=;
        fh=E7jV/nw3T0Rabr3l4hh2vI14aQxUUY+TWDQs7wR7Zrc=;
        b=Bm/VgA7ETihnFr+gwWYp11febqwZbLrzFEtRB0Vo4LJXVc+Wto6RhoeQ+o1qNqzO2j
         psUJBcRrG/DVEFcm79psYIzO++F+h4KkZ1y22r/y69+p6YlSLpNXppXXr3QQw5GfxTSN
         USGqvcfKFcTCNlX1WCTpjKfaQaWhmQioqzANXmGAa0AY8q1i4hqzR/DhE9N6nlujD1VW
         ZVcw4y07hm8HBW5PGPR5WEPnCNOXJa+CCrXi3E1qEHkZqBd6Gq3OMldaeTHc+CytS/U2
         JRSUXsRA3NcYkaoVhUpds0XlJpPkc0PXS6dCUvoHL+fOQiCp86Hn9awZYdr4jUea+TrQ
         8OVQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711493555; x=1712098355;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1J539zeeM5P12u3LrDwibcOY0HKmxP0FPAep/wgAKmU=;
        b=CT3BQjLuO0e5hk8K8DxPmkq4rHqSBIIYFGNN/N9n0dPpxLGe+WRXE2UpAM9vZrjZtx
         7MVFmxNw9HIcp9ZtYeh/kfhQAPntWgv9eQQZfK0lCcnHdhwm6XLmJidfy4HdJQZrI505
         wDg11dvDKl+uMWv7fu/X4cCjiaU4cFMlpA9wzlaX7DayGHWmZNjVpi1/WXYGAO/MkkgN
         RE6ZzzuOFlfR4zZSnlbUWObtrkPSJcmGyqIk02RU3B9EaaMfq0CvEO5jJLszlOmtHTHA
         CLxU3WFrOye+GijOP+8jSPPhxOwlXoY+ExhKJWlJOUmsTWwp+Sxt2vuDtT8Yt/302eFs
         CDPg==
X-Forwarded-Encrypted: i=2; AJvYcCV17RyY54jhJEUNP2l44tJt1XbyU8jI40cnD+oY7kVS0wPz4Xt1HnUmrQdM3bATzRoBhEgvYMi+BOuW+ixwg5qG16VLAj/+k5ZU
X-Gm-Message-State: AOJu0YwAnOy50vO0ehgOE9hBzxp1E6Ei/VSQrqrG6HgS8Gd35Tnn42GQ
	gvUsgv1PqLVoCSyKP6CiWR7SuM/ppeAFp16VbD9Qr48ZuL40Jyeor4xA4pxne9M=
X-Google-Smtp-Source: AGHT+IF55/BDkAFYt53QR6OsebJn+7zUhFO1y5MHyAmHygtd7b9S3bGeCAP41JmgCrUu9VhtOoaGsA==
X-Received: by 2002:a05:6214:c26:b0:691:85a2:4434 with SMTP id a6-20020a0562140c2600b0069185a24434mr3708544qvd.26.1711493555277;
        Tue, 26 Mar 2024 15:52:35 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:252d:b0:690:db56:6d5e with SMTP id
 gg13-20020a056214252d00b00690db566d5els2120156qvb.1.-pod-prod-00-us; Tue, 26
 Mar 2024 15:52:34 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUB8BWS+9IHrd+XhSSURvvJtmYUeVBxKjkU8cvYT3rm8KoY7NDn8s6Ymx2Z2MRK7v1ye05GbzT7oUW9O/SS+aokTp2nRPvQi6bm4vRy
X-Received: by 2002:a05:6214:5289:b0:696:44b9:1c71 with SMTP id kj9-20020a056214528900b0069644b91c71mr4309888qvb.22.1711493554498;
        Tue, 26 Mar 2024 15:52:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711493554; cv=none;
        d=google.com; s=arc-20160816;
        b=PxflkQ9VWQeYXNmegA48xfvdQWIiS1f5e4qRLLsNn0Op5uA/dSCWlRbj+lQaByARDU
         lmvWHmXGiwf5/lo6n/aS3y2jZ+c2zy7R1A5kk5DpYF5ox03R56qPtHRwdMbgw6S30Nc0
         SYX/9Vkdz6lejnGjHUSy/cGUbTKPMGUgvBDfZTGA7Bn2ydZXmacWLmAV/N8Xloc50WVf
         1o25Qx3bkHFrDG+jRCTB+mWjZ/Yu7xX35z1d4f5s+e+lDPH2PyYij93pxM4oY+SAxiqW
         H4HODofK0TZOqgERfiSj4A9aCXLrtC6TvOaAKtJ8PgqfkkHOR5dFlX1+hvlqo3Bwz0/X
         g39g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=1J539zeeM5P12u3LrDwibcOY0HKmxP0FPAep/wgAKmU=;
        fh=bCabGQs3jn1s0M0qXUniS/CTf8AL/F0wZwsNHkuqrnc=;
        b=RsSw+ojtqdCz7AIyeCto6/9UOv0edqGp67Cv4oovuUtHIcuY8uT3Po6GRxcfr1aIXL
         i4NaYwfSGbrlF/mQEqlVHdrf2+9ftlNmyX8zLNnxb0K4FjjWYKTTmGwD21IB3VN4VSDs
         5oOowWe0uqsaE2YNbY2yCMDzawQvfTtyM2ByLYNFAmpENeQhH2XV2NYsNj11QU4lo708
         /oOQkRw3hoRD9bkCfyUmCD5aDIsAq/FG/fnWOu3a3tejk37C4Pi8VGoDitC/s3VPc785
         +A1EiFTMPAdagv0hM17g4P4skY4sKiGBPWWeWey87ly6zzoRT4UDFdnbpLYm4hEqoPCV
         TwsQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id r14-20020ad4576e000000b0069693dc8586si4108564qvx.35.2024.03.26.15.52.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 15:52:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-119-rvpb_MOaNZmtu34T1Vpbpg-1; Tue,
 26 Mar 2024 18:52:32 -0400
X-MC-Unique: rvpb_MOaNZmtu34T1Vpbpg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B4FFE1C05134
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 22:52:32 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id B1AAA202451F; Tue, 26 Mar 2024 22:52:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 78F0A2024517
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 22:52:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2CFF0803EC1
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 22:52:32 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-688-JQc-qkBrOcePTZ-OmnEhKw-1; Tue,
 26 Mar 2024 18:52:05 -0400
X-MC-Unique: JQc-qkBrOcePTZ-OmnEhKw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id CF63E40508;
	Tue, 26 Mar 2024 18:52:04 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id A08F01001AD; Tue, 26 Mar 2024 18:52:04 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id A026810007F;
	Tue, 26 Mar 2024 18:52:04 -0400 (EDT)
Date: Tue, 26 Mar 2024 18:52:04 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: is there a command line Reddit tool?
In-Reply-To: <e951fe77-674d-45f2-a6e8-556493c84318@panix.com>
Message-ID: <Pine.LNX.4.64.2403261851220.1398748@users.shellworld.net>
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net>
 <e951fe77-674d-45f2-a6e8-556493c84318@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
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

On second thought, this article is dated 2020, before recent Reddit 
changes.



On Tue, 26 Mar 2024, Jude DaShiell wrote:

> https://opensource.com/article/20/1/open-source-reddit-client
>
>
> -- 
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo.
> Please use in that order."
> Ed Howdershelt 1940.
>
> On Mon, 25 Mar 2024, Karen Lewellen wrote:
>
>> Hi All,
>> previously, reddit worked well,  at least for reading posts, in both lynx the
>> cat and links the chain.
>> Now, even elinks produces a blocked error message, my guess is that the reddit
>> community is not aware of Linux and these tools for access.Wondered though if
>> another tool already exists that might be a part of a shell infrastructure?
>> With appreciation,
>> Karen
>>
>>
>>
>

