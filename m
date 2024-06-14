Return-Path: <blinux-list+bncBDGI3AUYYYCBBJUOWKZQMGQEUJLZILA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mail.lfdr.de (Postfix) with ESMTPS id AD36590921E
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 20:08:40 +0200 (CEST)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-250a7122b8asf3492764fac.0
        for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 11:08:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718388519; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jy7QYXca/Np5M+0RwGv33U5UGJN+ZJrwkK452MnT3e7JuckGM2LcGiqrwoJvBMl/5f
         s38eancnE6DVGafqrTYYDRxOwMSqcgyezp81khx41CINAIxVFod3bpUTCtAsGegIsTga
         EUWlqKU6K7kqqETQuPmAD5Ylh0rfnHiXZAatWHFQXG6IUNoVrKngpr0lIGGu9p7DWPQi
         ZA8JmBpAho723b36dHtgksJgW/4LBdBrPe/lUpZcQbmhX8aQsJW1mH/I0l/K6qFNHoUH
         aMqDSQu9e0W/YZ/dXYxHmhJWB6otqcknRStYLSscLxwlVVtqXCi+DqqLuW9oDU/WmzfF
         oVUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=/5FcDLSqOH1b7HYuRLDtNJLIke3GKFW4faFUzOrdMEs=;
        fh=AGY2x0bSnWrPM37Xj159htZ88Xtrp3LTkpJZWk4A9Uk=;
        b=t3FxK/Cmgv4Hrq/W5lSlwVF1EVuPK1Yxok/f9l6obG4p6TlVsdds/myv1D3nYK1bse
         hGPKhDbWvLKY1Mx7KNKtqPFNgtV5gA2NqNigWEoYngd1YNDVQmJX8mFJ4i9DximEz2Ys
         hqTft0/K8goT/ZRR8n2Xthze9olL91E0NkMbQ8v1ezss8od5zXk8ikTyL3RoKUII3dbv
         nX0vUUaasBERGK7wBPFKCrxaeolKjue9Xi8h0cKsuGGTfxqL6HPt9WtBN6iIWSz1uojA
         Y2cHNAxLYlv86gD6wewJX/oNq1EyiLJTxDY+HrN0oACraQvq7B2JHu31EJzuq1pw9yfB
         h8aA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718388519; x=1718993319;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/5FcDLSqOH1b7HYuRLDtNJLIke3GKFW4faFUzOrdMEs=;
        b=FdE7iWVDmqv1ACOs7eiO0466y82dASAvsFVdSVwZdJlAEap02IK2ji6vtDjH3E3els
         1whUlr8s0fMGw0ikXk/rFq7LBA9e+pK8wO6vkaumv5d1iKBeQIYSTq942B+YNZHx1xdQ
         6BBiN4AAEjFGlcWJQsrXScPGnvwQkMHCWiAsZ0pCzMkHhMsQ/CuWZRaxOaSW8wSUjhL1
         fSCWnBHzxJOai4gCXT13JbbcXQdxye6hAiJMeHpMjWHnBElQ0kY5r4SWNyKjG67ejg+i
         XWMHMfYTi29Hj9PSfA+FEvvUsUaNF6rRTuoYPvy0TIoLeKKqWccgZ02JfKgvR1hBQVxC
         eB6g==
X-Forwarded-Encrypted: i=2; AJvYcCVnfooWQxnfWIrBovT8wiLJNq+5tO4IotMv7rr1Rc2f/wupy1dNuItgiH902trVqteCeBMQWoA79RzaxrwF9LjPKpy6ZW5u4fU2
X-Gm-Message-State: AOJu0Yw8HcQfOZKMg6F+krur4ApIy3NZDeVju7QIzPteesP7M1Y+HQsC
	Fhzkqb92bL4uQJnWWxSXTROsyy52b5sT6Ue0gl7m899BHZxD826NcI1Uq8TLEEc=
X-Google-Smtp-Source: AGHT+IHlIqXRAgKbmKhax7jek3aQsYPOHrhU+XNe/3RGnBo96BVfnK2gFx8gYJ+jGTQpKLYQAq1Q1g==
X-Received: by 2002:a05:6870:e8c3:b0:254:aaeb:d29b with SMTP id 586e51a60fabf-258428f6587mr3762614fac.13.1718388518735;
        Fri, 14 Jun 2024 11:08:38 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:331e:b0:254:7203:f69f with SMTP id
 586e51a60fabf-2552bc37675ls1771579fac.2.-pod-prod-05-us; Fri, 14 Jun 2024
 11:08:38 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUVrRuJnIVVGJc3wQSDOKV9aUBN98iq158lsvQn4UMvmBIh+TqIphC+VyAiziIAYgBBKbDivBNmtc7xWWBpxf9hcIrsRVAz6zso5n03
X-Received: by 2002:a05:6808:13d0:b0:3d2:2250:1195 with SMTP id 5614622812f47-3d24e8e1541mr3800191b6e.22.1718388517921;
        Fri, 14 Jun 2024 11:08:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718388517; cv=none;
        d=google.com; s=arc-20160816;
        b=hszi+i3544mcXcUYKp5VnU84xzCwAFlDqgURpE6KcpTiIyKAfa34cVrfRmKCP3FxGH
         +HgB5SbF0HSFQ+YjfSaRypOD3Ue8FsHlY1/5j0AQsMt7kfSaWlO912E5wvgWTBGK1aTt
         Wda5Mh+cqoP7P46WXGUx07Eibhuh2BntHnrt5YBnCSs2O8aFma+fQCdks9pRmwEnL8Oh
         YbdABmLdWpIpbJfOeRmZJ2RW7Yd7Efb7U9CznLDuxw9Nukz3ZU75dqB6dvvUqFtEseeb
         uzYLRSmohVsmFc/qCQTBtYAGDRSlYtw+REF29jVcbUPk8k5QJLu5V+jEWbPFAsFj4pRG
         Eamw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to;
        bh=yf/zVz/K0vUdl9kMd26GfSP6G3zHTgJUlUoNPSbQ/Jo=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=dDex4V5yhz1sRVW/BxRRZl6voKDeJe5xXdGPcs/9iAHgZ2j/3r6Y2xg/lOwy5XEjbb
         a2El/KPkE3mwJjlzocf9cW2heHZY1NDTrPcVZ2yh8TPdRTsfSkc76SeU5+QEvOtgXxBv
         ZuB6j4NQUgNbFM3ZDFZ8yVnWETXAA9YdkeMCi11J8jGT8B/HqBxuh5gx296KB5RkMBYP
         zuFUgayFwO3XWdf83nF/YCew1UdbiXA4xLP5Wsm9P7LBvjfhxlWIeFDclMFwbXdd6xl2
         VyYbStnS57xUssCmaUMJT3Z+CX1o04HcpFGCzqKSTe5bXQ1Va+Xj7f0CUW8AqnX7gglh
         CbEw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-798ab9032fcsi414552185a.359.2024.06.14.11.08.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 11:08:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-635-jbWaq0q-Poud63byIRYtOg-1; Fri,
 14 Jun 2024 14:08:35 -0400
X-MC-Unique: jbWaq0q-Poud63byIRYtOg-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 310D7195608C
	for <blinux-list@gapps.redhat.com>; Fri, 14 Jun 2024 18:08:35 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1DC2F195605A; Fri, 14 Jun 2024 18:08:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 17A301956059
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:08:34 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 61FCE19560AE
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:08:34 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-328-A5GtQJZxOOWA-WhYrktl7Q-1; Fri,
 14 Jun 2024 14:08:32 -0400
X-MC-Unique: A5GtQJZxOOWA-WhYrktl7Q-1
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4W16hv6v07zp2D
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 14:08:31 -0400 (EDT)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4W16hv6gK7zfYm; Fri, 14 Jun 2024 14:08:31 -0400 (EDT)
Date: Fri, 14 Jun 2024 14:08:31 -0400
From: Rudy Vener <salt@panix.com>
To: blinux-list@redhat.com
Subject: Re: What Happened to duckduckgo?
Message-ID: <ZmyHH4DeAXMQzthQ@panix.com>
References: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com>
 <a0f98110-689a-41e6-a1b7-8c5f7b6cb939@gmx.it>
 <2b2e74b2-5cdd-4dbf-961c-a13940eb8bb7@hubert-humphrey.com>
MIME-Version: 1.0
In-Reply-To: <2b2e74b2-5cdd-4dbf-961c-a13940eb8bb7@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
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

Try this:
in a file bin/ddg place the line:
sr duckduckgo $*


Then chmod 700 ~/bin/ddg

Make sure $HOME/bin is in your PATH env variable, and from now on you
can just run the command:
ddg whatever search string you want

And your browser should come up with the search results page.


On Fri, Jun 14, 2024 at 10:29:23AM -0700, Chime Hart wrote:
> Thank you Kyle, had never heard of that one. Shortly after I asked, "ddg"
> came back. An engine you suggested looks a bit like Google, but also not as
> streamlined as "ddg" What takes some getting used to is the next field is a
> reset instead of submitt.
> Chime
> 
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

-- 
Rudy Vener
Website: http://www.rudyvener.com
Check out my latest story: Dwindling at http://www.starshipsofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/
Need a Limerick Fix? Visit https://limerickdude.substack.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

