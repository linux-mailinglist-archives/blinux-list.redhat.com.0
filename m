Return-Path: <blinux-list+bncBDGI3AUYYYCBBIELWKZQMGQE5VLR3EA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com [209.85.128.197])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A05909215
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 20:02:10 +0200 (CEST)
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-631d53af5e1sf27719657b3.2
        for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 11:02:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718388129; cv=pass;
        d=google.com; s=arc-20160816;
        b=a0lDqYf2jEgJSYON7Topb+8AiWCfzW5Nr0zj9LC67fj02cNWtpGfA2kGt17+46SDds
         bvyBCnfhS7oq5gov4uiizFEoovIQwlsJzkak/bvjmBfkkvUKcnonxBt+001OXOwfWFID
         PWvQDigZp5FwoaryJEuDH67Ki7J2UP9fr4upcFNa5bqUapy3x47Y8x5sL54xhRROxLFN
         vBzubTAOnhuN2k4uZbkL77ijZZLJiZUyRekLckiDHWbwXSB0dInP5HNEEfEvKWg5INtx
         JHS5g1Q3RwpWmS9C5dtfwzGDtOhHL2IY4TZhw9PUhDbslgNMMudJB1u0AGGZHT9e4RtE
         IgEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=iQHAkDDWlgOB3sq1ODKvUA/+nON7A42CTEn9geNODU4=;
        fh=DjMgLQGgDFqIfczIWXpONRLpnUqi6XxUKiAxwvarl+4=;
        b=gwKJiD8lamTE/o1r//zEheDsSE9HGYYLNUdxJEDcidAK4VqRKCko89+iLKMbWdei9k
         jLjVYHiGUV6k6QrGaflhp+Vw9Lgci7Amy9/XNFzYcGQyChSpNciTZ8J+JPPugaGsEnGi
         Xse4kL9kH3+E3uO3vwOY5pUj4na7baDduaNolKSUsN1babNWgTZvONmO40iWvJxgT2o/
         L+tE9e9C6kEBPB1Jo26L/pulezYM0OdalbhhVIBxA8SrKfAfTbugsbrhpGW9f/Fza0Ig
         rARUJzLFI9mtmkQarMRU5vfOVdYho3nkFhbJ2VEVS/Hbn9mpiYL7K8ykioEGpCpzYUM1
         fPfg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718388129; x=1718992929;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iQHAkDDWlgOB3sq1ODKvUA/+nON7A42CTEn9geNODU4=;
        b=ucS3sMvNm6yElIF1Kyv2AnIlwiFV788T7kUmkPnoDvDwb+p8aT+3brL4GT3y17nPLP
         LdDzFCB6AN1tU7jfhCUPYn6k0E5nwcCQiGjNnz8mfPXCEgMrR9Q2JFKQ1K5xQStpJzLB
         5tKaDA+KKm0PWPFNlxEqf985yogqlbB3JiNkeKPwrLJ5JM/au7YQqPpaaJecQFAL2de1
         aEQbezReAD8PGIX8IoLioVnXG1pmz7fq9FRCS1m0BEw5V1HuD7bitP1hVDZbzMqBrMyA
         Io9KG6qoMnY8kp+eagK1Ylbsd6C2bbv8MKPGdjiO3Q8YgLG+skMsvs7AoZE+lVYLZ7N/
         8bfw==
X-Forwarded-Encrypted: i=2; AJvYcCXMDbVRjlo5gbtEXu5oKPUbh/7+GGnCZ2lS39OWNw+m7J0upqjDXsCCTXt+BRw8ASV4Cu6kZuuIlnfwAH1shWEA0tk9bA5K+cAN
X-Gm-Message-State: AOJu0YxINSEQPHfiLcvN8RTTj+/QxrPpRKwiEwCMT9F7rCOeBKWTPvuI
	u+EfOes05RSDR+owk//SpsEtmK3AUGI89b4Xxpqr1TYkXhqfl9vmFrZSjriybr4=
X-Google-Smtp-Source: AGHT+IF+0Sllh8ZP47j+wtvC66Sn0YUx5z/eBMUV4wtc2vw+43kF8nU+WEzbNubqarWd4zO/yAPVng==
X-Received: by 2002:a25:c501:0:b0:df4:ba84:6ad3 with SMTP id 3f1490d57ef6-dff154e0dcdmr2985557276.61.1718388128906;
        Fri, 14 Jun 2024 11:02:08 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6902:1886:b0:dfd:a3ff:8b26 with SMTP id
 3f1490d57ef6-dfefeb42cc6ls3877037276.2.-pod-prod-09-us; Fri, 14 Jun 2024
 11:02:08 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXgbsp3myQV98toYbtIJHmXV2/BfhnqGOd1G7ISo9MA/0ivju/I6O11aNjUfpL8MXu9et3iVYsfKaoAhaLjd0GwklyAnFcsvCttIhGj
X-Received: by 2002:a0d:c381:0:b0:632:58ba:cbad with SMTP id 00721157ae682-63258bacef6mr25641467b3.10.1718388128030;
        Fri, 14 Jun 2024 11:02:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718388128; cv=none;
        d=google.com; s=arc-20160816;
        b=R5nKGpaUi7VQzrdehS0VCG0z49PI51vFvk6MWBUl26v0SfNxCXfOKuy+Aqb227ii0i
         sDXMQ8PQivjM2sFeGKl3HBXpG4Z+agZ78ID27/V5flbRLw7/pBq2pyaEbxt+rkPOdzbN
         uQDueitNuyosOvctJCck1h1607udgQv1zLt6gld/CenX27fHAXnWBlOtlbb7s38ayecc
         9tRp7e90+Oq6hGiKB+mFjncqCRp+Nn15WrM2F0LgUpJWeXNkw5oP7fVmvXEs+knupNJc
         l+YqPnHCAv/p9KyZCs6Kr0c1GWu1yVBRjq34QITxNoETXRZLEqZlrMuMLgN/YJE/HOOc
         kK2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to;
        bh=FgYSWP2sgTvJK6b8ZNpSfdIJJedGehC2ixxZexcbgg4=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=qXoT3eUeeyuZKu7roTB9L008HEiEaL5+Ff9oTMpJK1kc/ztMB5+Z5zvqKC6Ue860fx
         MTAMUirkwsk6kOSPLCPHmzhnnvnAu4LpupmDSYffHo49DULb/OR6R7PjEwbEvPYb+Xkb
         CnGjl9ae0k4UxiT/8YdcDMtCRJE/gHnUo8D+GwxHDB3LKXrkEjL/Uz8fW2JHPhfVRsVT
         jbAqNe/93aZ7DVb+hgB57ciFkxaVdYQDzGb9TyIBx2sTzXZcELVaVTsXzHcx7O3gdT83
         V5744zD05N5qRlP4p/INltxZuqSHM5A7ZNhqoz/AOP5qjYPo76+3T9v49UNw4a9e1vQ8
         fPHA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 00721157ae682-6311aa23969si15351917b3.275.2024.06.14.11.02.07
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 11:02:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-417-DGxox1JaPdyKeW3SZoZjJg-1; Fri,
 14 Jun 2024 14:02:06 -0400
X-MC-Unique: DGxox1JaPdyKeW3SZoZjJg-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7BCB0195609E
	for <blinux-list@gapps.redhat.com>; Fri, 14 Jun 2024 18:02:05 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6BB983000220; Fri, 14 Jun 2024 18:02:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6964D300021A
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:02:05 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DC2A21956094
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:02:04 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-265-UZHC1lc1O8CLUSu3uBQfNg-1; Fri,
 14 Jun 2024 14:02:02 -0400
X-MC-Unique: UZHC1lc1O8CLUSu3uBQfNg-1
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4W16YP6pVyzmvR
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 14:02:01 -0400 (EDT)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4W16YP52cczfYm; Fri, 14 Jun 2024 14:02:01 -0400 (EDT)
Date: Fri, 14 Jun 2024 14:02:01 -0400
From: Rudy Vener <salt@panix.com>
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Re: What Happened to duckduckgo?
Message-ID: <ZmyFmYOIlVAhHQru@panix.com>
References: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com>
MIME-Version: 1.0
In-Reply-To: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
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

It's still there. I just used it. Although I use surfraw duckduckgo to access it.

On Fri, Jun 14, 2024 at 09:35:47AM -0700, Chime Hart wrote:
> Hi All: Rather suddenly, just after 9AM Pacific that wonderful site either
> just hangs or displays a rather generic interface with no search box, at
> least in L Y N X. I tried L I N K S, I get a blank page. Also, I tried in L
> Y N X as an https  and it just hangs. I hope they didn't ruin it, but maybe
> they got hacked? Thanks in advance. I cannot remember that ribbit site which
> displays more results.
> Chime
> 
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

-- 
Rudy Vener
Website: http://www.rudyvener.com
Check out my latest story: Dwindling at http://www.starshipsofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/
Need a Limerick Fix? Visit https://limerickdude.substack.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

