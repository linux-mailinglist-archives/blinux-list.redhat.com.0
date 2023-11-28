Return-Path: <blinux-list+bncBCVPTHE7K4IOJQEZVMDBUBF5O3SUA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id E842B7FC832
	for <lists+blinux-list@lfdr.de>; Tue, 28 Nov 2023 22:49:25 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-67a680956d4sf1117456d6.2
        for <lists+blinux-list@lfdr.de>; Tue, 28 Nov 2023 13:49:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701208165; x=1701812965;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p26bFdr1VGAZtaI2t+faPkypRGG4P12b+ksPMdIJpUs=;
        b=CK7/dD3kNUMizu+P7mVkT21cZizTJknGM9+1A5fJgdbVtHUhW10B0qvzfeE3eENjbW
         8CxP01fwMrq3wbvzlHS4vvxW8AYMPFFsfYKgIvwPdK4sv0xY+IOjNwjhTz4V+X1sq6uX
         0HnOEiV/EP2ZuNDr2OrLisfy9SecKKNlFMRA/xG3KGEDSV/VZACRQKW0EDoo3+7XqHuY
         HqLUtGrWdujIfpRIeeT5STlxt0FoH/s7WJK6GcBptS5nkVYWkgBJCLF9ZiYkhU5w6JGh
         6dwn8dJ8Guc0KnbbiaxkhgK9QNUDSLQOo/WK45rw3nlyW3cqqt1EFnCMgouz6OoemBc3
         7z9g==
X-Gm-Message-State: AOJu0YyrD12yp5y8jVk9D+Ug5Q6ihMtyL5ZwawmSvJbaN2Wz+3oIBLob
	WN0wvF0ylgKiLkGfDwMOXrKyrQ==
X-Google-Smtp-Source: AGHT+IEPJlU4/r1f3kY4RlZmjkkwukQcjK4D/3hjx1LFsL7f7yBDpV+xRZIFIptyIFD8iksx7flk6w==
X-Received: by 2002:a05:6214:c86:b0:67a:4e24:501d with SMTP id r6-20020a0562140c8600b0067a4e24501dmr7614496qvr.43.1701208164912;
        Tue, 28 Nov 2023 13:49:24 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:18f:b0:656:3716:f1e6 with SMTP id
 q15-20020a056214018f00b006563716f1e6ls2817265qvr.0.-pod-prod-06-us; Tue, 28
 Nov 2023 13:49:24 -0800 (PST)
X-Received: by 2002:a05:6214:580d:b0:67a:1d26:fc4a with SMTP id mk13-20020a056214580d00b0067a1d26fc4amr14396029qvb.64.1701208164290;
        Tue, 28 Nov 2023 13:49:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701208164; cv=none;
        d=google.com; s=arc-20160816;
        b=PR1TpDdjyBMYl1TuIwc5y8FjslbFMpkLzsEh5qBUDOEZ6asLuL2OiUAvWiOtwyJM/o
         MScpWqlwVaM3OnIWADvRbMJJ63626yIte/iCfVP/HllRNiPW0KxEufO7/jkrivyjMaVU
         L7Iax7DV/kzpYsrZ1MEuBR3HIhGiE6ajCSw9/bESXju/adfsDymIOn8ouOXkVZ55FsCK
         4aXkqS4/DHEKTqDkqu/vVNyyLrxF6i/4tdXzPOEH7OBKRFAcdySrN+pOGn52cFg/cCA/
         cCP/1aatsQQ5YI+CWjtGpAb3SMoDgn9B88G+8UbxgDw9ysePGZiBWn8RfXezCHofnGgk
         grpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=p26bFdr1VGAZtaI2t+faPkypRGG4P12b+ksPMdIJpUs=;
        fh=NExXtP6gscNCFT5r+KZAp3B9XPM8l+2PkkR+9Mq3ZZI=;
        b=WCxiqcHghJtz0860KbisEcDuNjnUWMOMwuX+K8Wd6GxFUfRA+i7Hip4dGstcqonNap
         i9SV1Hgon0bGq5+LYF0cA2C1O0anpTsY7SJLTxFfiYEy+nQChFJHsx6eHw7FDPY2URJD
         dZcP5bdqI0jfVcc+hJHBD6GKAEYEaiqUk2Yv35MQLPifv1Wnxi1/u79SsWClhCSO6HSK
         o1vl+W24nXp1G5dp6hiLwnbmgm3FjweW7ozn4TRF0SfJPuJ3Tlc9LXG01st8Rn5ZJ2FB
         HawUpx8m1aDSNdKkKLwB+fXVIGy9n8A6LftRbHgTQ5P3oFYstCemJIyoEDoEjck02yJb
         ZvaA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id o16-20020ac87c50000000b0042384dc50ecsi11933176qtv.331.2023.11.28.13.49.23
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 13:49:24 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-390-ycIwEJF8OXeqw_TKb1kFtQ-1; Tue, 28 Nov 2023 16:49:20 -0500
X-MC-Unique: ycIwEJF8OXeqw_TKb1kFtQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 28AAC101AA6F
	for <blinux-list@gapps.redhat.com>; Tue, 28 Nov 2023 21:49:19 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 257B220268DB; Tue, 28 Nov 2023 21:49:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D9E420268DC
	for <blinux-list@redhat.com>; Tue, 28 Nov 2023 21:49:19 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 01AEC830EA4
	for <blinux-list@redhat.com>; Tue, 28 Nov 2023 21:49:19 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-501-RnL7YGL9O2uoxzvxRjLPYQ-1; Tue,
 28 Nov 2023 16:49:16 -0500
X-MC-Unique: RnL7YGL9O2uoxzvxRjLPYQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id AC0D440508;
	Tue, 28 Nov 2023 16:49:15 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 715171001B4; Tue, 28 Nov 2023 16:49:15 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 70E6010008B;
	Tue, 28 Nov 2023 16:49:15 -0500 (EST)
Date: Tue, 28 Nov 2023 16:49:15 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Sandra Snan <sandra.snan@idiomdrottning.org>
cc: Karl Dahlke <eklhad@comcast.net>, blinux-list@redhat.com, 
    discuss@blvuug.org
Subject: Re: Brave, or new browser projects and  the command line?
In-Reply-To: <877cm1pnmo.fsf@ellen.idiomdrottning.org>
Message-ID: <Pine.LNX.4.64.2311281648410.3701114@users.shellworld.net>
References: <Pine.LNX.4.64.2311281559340.3700734@users.shellworld.net>
 <20231028162540.eklhad@comcast.net> <877cm1pnmo.fsf@ellen.idiomdrottning.org>
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

Indeed.
part of why their team wants to improve the inclusion of web interface 
options.



On Tue, 28 Nov 2023, Sandra Snan wrote:

> Karl, fastmail requires a specific password for each client and you can only 
> generate those passwords from the web interface.
>
> Here is more detail:
>
> https://providers.delta.chat/fastmail
>
>

