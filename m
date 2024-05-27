Return-Path: <blinux-list+bncBDGI3AUYYYCBBIED2KZAMGQEHGQMJRI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCA58D006A
	for <lists+blinux-list@lfdr.de>; Mon, 27 May 2024 14:50:42 +0200 (CEST)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-24fe4bc0353sf1565422fac.3
        for <lists+blinux-list@lfdr.de>; Mon, 27 May 2024 05:50:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716814241; cv=pass;
        d=google.com; s=arc-20160816;
        b=ErpjzTnt5YR4t1QKW1Xftbn377+snbjKHycA9UGWKIRKDGT4QER1NOCw27KF/ubgwN
         uHi/p4TVUBgJfHVRwXpMohnMZW6pzFKwzLbHhhzQVo327unhBe5QbxD0ZpuuVbSMAB7n
         PbDo0u4CdATI4H8N2iRWCbPUM0HXOVNVDOzZ1pcRLpKPooF7d3Gbe7z+DoK2L9orktcY
         jAtj6HITqS49KEEqRK+9q+fDDoBksAdG2SONtL9rUMZVBSA1rD1ySdNlGZDcLddyi8wa
         fo7C0KNFmr3hfN2ZwivCpx/pqerPibERk9Hextu8vR6aumByWIBIU/fODL6XD3wmUgo4
         sPgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date
         :delivered-to;
        bh=VD2wKD3OAOAA0QJJNzwxCuZOmtQtHChQpMiP7sDDmaY=;
        fh=dwCwA4/USc9+1j9FHDW1X7cIa19GVCA0zWqHBCtCzgs=;
        b=r9XGuJcPhARb6TG/4PNuqVG7Cy6IQWycbsdu3Tm159sjWo3TJXkrkAtwRIqGgaC9oh
         YWggiMu3BO/BrjQFpixZzaTEJXo902Nalj7mPmlR0x93upMC+25nHNm7XovFCflTpdkc
         PY0YO2P5Xyr58cvVMws60L1FOvJtkMikSivA9lBf/gq+UrVZH7jZsYffWae4mffYHufH
         bEb45Hfhw/Wx+6dp/Bz+6P+KZ6rIkl7Kgo0z7jFdSs+1nRbIE7x9JJs6c2MS2gDdDvPJ
         TCgaveLiMwijtQZHWhgU1kDa9EvfnagZ9rFIw686Hqk588VOGfhT0vKfF4wj4v9fCavR
         kNnQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716814241; x=1717419041;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VD2wKD3OAOAA0QJJNzwxCuZOmtQtHChQpMiP7sDDmaY=;
        b=Vmj6TdJATviHgr3jTCDHWDsCNGXnq+0YlT5KdekiHL+1vv/onoHVx5C5L+Ptuij/K6
         98HCUJWGzoyJbP8SmvFKLOiJ00ud/AUjTCRbXjyoHxMWqU/fYT2+VnamFRUZW+qrOq6a
         eSykIMzMFhr8XE3PtFSMookCKvFP9fNLxZoOeuRwGfB666E8BOPfaKTH5bzYMBALwJ4i
         hPvOPbKBbRkzKa0HMo6sdHUE8Oxq03N68DhLkxsmgEetJ2zOgJ+wXFb3Ctx/XHdwGPY/
         fLVVoyIb3W/SKdaxXVCFf+yD65uBRaho41eEo10ZzlVVsEd5Y6ZA+IBrhwWwRf6mJ01K
         tVVQ==
X-Forwarded-Encrypted: i=2; AJvYcCXwaf05uqJE0vcohJic4jFdIcJXwrHCehoDnERIiR0/vb0OflgOkJr2KvlJrYpBa6VMusaAGNqqXXP4Czfv4u0rvfAWDnpM7M5v
X-Gm-Message-State: AOJu0Yxh/Avts1OgPpHmP2myTab/j+1N80qPLnMj1Bcsi+We8v5XWvHB
	LSMkCMi+PPdiBeDYCEAHgaraKCVrMrxZJYhYR0/ztApcv7LqR/GZ1nvq7S8xVEA=
X-Google-Smtp-Source: AGHT+IG1tuDKX7jVKgCUNZZLJfqBGoO0ks9vhJzRHE44/jMi3B03msc0QEQpO0PfC45RQp7PCCWyuQ==
X-Received: by 2002:a05:6871:5c8:b0:24c:a414:712b with SMTP id 586e51a60fabf-24ca41522bcmr9999094fac.7.1716814240536;
        Mon, 27 May 2024 05:50:40 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1988:b0:43a:9717:34db with SMTP id
 d75a77b69052e-43faf014a50ls38861181cf.1.-pod-prod-05-us; Mon, 27 May 2024
 05:50:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWOvwyh5mjjoFLw0aI30867XHAAQL9fIfQfux8kusHRP3MZ4VJfaZrTyGuXMMmVzqWsaTfs+HfioKW8zLqKL+69lp3OIHSTe1Kl6kBx
X-Received: by 2002:a05:620a:b8b:b0:792:c13e:2996 with SMTP id af79cd13be357-794ab083e5emr982461785a.29.1716814239442;
        Mon, 27 May 2024 05:50:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716814239; cv=none;
        d=google.com; s=arc-20160816;
        b=aA3SOKbj7cAH9yNUhGrSIlvKvNl7HTVt+T0WEP7ITDMVNUrgrOpzC61e/UwjCsDqgm
         r+GcAQE7o7RXPKwXztKc/5GyVul7sHdY3YR82VTczZ3P4kzsB1cJ7Tja+zXkgfBTFFJr
         CHBprwtHwH7A6hDgYOeptYo9HnCX247EOfJvLHpYDTML4aR/1MsiyPvdVlPxFPH6xJAL
         rxadVtlpySudMWXwd1Hbqsch+rlP4POqj8NOk4PjEaE1ilJAixWGejOUefzYEyWoReUR
         EAZDGsGHsnpoR9rPyiRyH3oDxuJL3yopMsy4X2dSmWDL0kJTsMRSfuRafd+9yNKnPwHs
         pjEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:delivered-to;
        bh=7Vx03BwEwUY67dgsYoth67H4irlivr2BqWUaJoonSKg=;
        fh=eFiuhkSo8qJAKy2KgomfmVyZlD5KBzBHjsxyrojhpRY=;
        b=ZQMh6fvyKS9ovgDns2jTjAJfl0IMoKqsdS3xjUYi2tQrGp+oh9YzfMv5VFdw0+oBN2
         ZIXPVy2MZTalez0tnTeww9hqALIQhmLVWgwCnpZHeEgHUJVKDr+26KAweI7pK40GGM1g
         KZJN5N9x6oYgrWVL8SHA8grKyFDh9PgNU3Oi6WMcOY4AxXQrOQXLm2P3tpB/N481FJEu
         nYc5WObkkYjrDwDBdkiQxLa7YbBISNnPbxpNw8XhoMWQ92uRvQoOAsVTO6YnsMZsoll5
         7XWVAm0n+j9TtB0eHlhlkCWaAEt5sg9sBk1v4RtQTdsTA0fw/AG3/bUd3QhwhMR1OZjQ
         6xCQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-794abcab916si849509285a.62.2024.05.27.05.50.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 05:50:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-609-EJsXJLUCPWWGM9aDsPvhAQ-1; Mon,
 27 May 2024 08:50:37 -0400
X-MC-Unique: EJsXJLUCPWWGM9aDsPvhAQ-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C37201955D84
	for <blinux-list@gapps.redhat.com>; Mon, 27 May 2024 12:50:36 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B2EDD30000C3; Mon, 27 May 2024 12:50:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B074730000C4
	for <blinux-list@redhat.com>; Mon, 27 May 2024 12:50:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 31A121955D84
	for <blinux-list@redhat.com>; Mon, 27 May 2024 12:50:36 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-631-CYRdwkK-MFWzBLcrDRVAoQ-1; Mon,
 27 May 2024 08:50:34 -0400
X-MC-Unique: CYRdwkK-MFWzBLcrDRVAoQ-1
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VnwVD3x3bzRSC;
	Mon, 27 May 2024 08:50:28 -0400 (EDT)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4VnwVD3mm5zfYm; Mon, 27 May 2024 08:50:28 -0400 (EDT)
Date: Mon, 27 May 2024 08:50:28 -0400
From: Rudy Vener <salt@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: blinux-list@redhat.com
Subject: Re: getting BARD 2.0  to work with lynx on Linux
Message-ID: <ZlSBlK5r9RWbf1d0@panix.com>
References: <ZlPijW01gZgptZTU@panix.com>
 <Pine.LNX.4.64.2405262206320.2441188@users.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2405262206320.2441188@users.shellworld.net>
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

There is, but it isn't saved to disk and I didn't want to change it every time I visit bard.

On Sun, May 26, 2024 at 10:10:14PM -0400, Karen Lewellen wrote:
> Most interesting Rudy.
> I wonder if there is an options menu  choice for this?
> Personally,  very personally, I am profoundly   disturbs by the patron
> double standard.
> Bard users get to keep library books indefinitely.  Those who prefer, or
> require physical cartridges  must return that same content..for a publicly
> funded library.
> How is that equal?
> Karen
> 
> 
> 
> On Sun, 26 May 2024, Rudy Vener wrote:
> 
> > After testing the new BARD 2.0 interface on my Linux system (slint v 15.0)  using lynx, I
> > had a few bad hours when access was denied with a cookie error message.
> > 
> > I finally got BARD 2.0 interface to work with lynx, but had
> > to change the cookie version to do so.
> > 
> > 
> > To save others future anguish, here's what I did.
> > 
> > 1. cp /etc/lynx.cfg to ~/.config/lynx.cfg
> > 2. vi ~/.config/lynx.cfg
> >  copy the line:
> > #COOKIE_VERSION:RFC-6265
> > and edit it to:
> > COOKIE_VERSION:RFC-2965
> > 3. In a script file you can name bard or whatever suits your fancy, call lynx as follows:
> > lynx -cfg=~/.config/lynx.cfg  https://nlsbard.loc.gov
> > 
> > At some point BARD might fix their cookies to work with the default cookie version. Then again, they might not.
> > 
> > -- 
> > Rudy Vener
> > Website: http://www.rudyvener.com
> > Check out my latest story: Dwindling at http://www.starshipsofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/
> > 
> > To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> > 
> > 
> 

-- 
Rudy Vener
Website: http://www.rudyvener.com
Check out my latest story: Dwindling at http://www.starshipsofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/
Need a Limerick Fix? Visit https://limerickdude.substack.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

