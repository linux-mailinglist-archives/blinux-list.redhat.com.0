Return-Path: <blinux-list+bncBCLPHQH4XEIRB5EK2OXAMGQELIA7O6I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mail.lfdr.de (Postfix) with ESMTPS id D36BB85BFDD
	for <lists+blinux-list@lfdr.de>; Tue, 20 Feb 2024 16:29:58 +0100 (CET)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-6dbdc7135bfsf5954070a34.2
        for <lists+blinux-list@lfdr.de>; Tue, 20 Feb 2024 07:29:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708442997; cv=pass;
        d=google.com; s=arc-20160816;
        b=H6DElSWll0FRIQbUPZxkcKXKleXrBi/s0bac2vQUw6UmAPvjx80CRgBcDu0vSqm9w9
         y1aQvSLHXfq+uymHw4PHGcX/oFeT8VGN9uQ4P2eaCy84CGm3m/SN2yVjnLLQSaO1N6Ye
         kEm4NS7oIRNiyDtCyIl5KQ7wrXhZZUBY7axNmeimiIJCD/pTwfJvqkWTW9YLpK4fHK3M
         xqLiqj3ISyU3GVGwk7zWc6a4nB1vK+4NzaGx1FS7ev8bIpC/q9eA+NAdFXKRQdtJMy5g
         LIaK04Lcjh70eyNhG2zf2SpbVuUWC3gbRbNJPGnqI0bDvYh10NaoYDQpxYuQdGQqrJGp
         a8hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=M256rLs0HO9ueN9giEb6YDSa0yc2y5rMyO2WFRsgzGg=;
        fh=QUAswm6dlwdQrHnwVgUwfOFcHwn5MV+Q1jkKhovQ/s0=;
        b=qo456SBl9lhEynfkCwi/QFGSCunvg2z36lfL1MS++ZoNB4KlZ9X+5cLVeG3xHAlluM
         LvdWJdNRUScBsGCTpcDDmMzRLVu8sUroa3RptbrxHTzZ6gUefvSsmN3NAFBAXDiz09t8
         b5bDXR4mlxjmM1ND5ChQcGkwlr0aKybhakzX9I+adVr6nTcsM03P2GAsda9+eC6ATaMj
         +dahT7HVo/jCZZHPAL1L0cg/pSt500i0aNe8YQJG5ma8Pv8PkLHBcR10pqDFnqjsxS0G
         eUloQsyi6dhiBaKcnHPVZE08Pv8LaAK07M5rFPGsjXy8EiWpmZi94YvzNaA4k+rQ5ppE
         a/gw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708442997; x=1709047797;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M256rLs0HO9ueN9giEb6YDSa0yc2y5rMyO2WFRsgzGg=;
        b=YBQDkfdQrCX/FTQ0c3dpQC/6+ops5qvtQzOmp5ZsRe0pHltMBQS6+K8arEGX5N0dPn
         mmQF/H1Pbze+PMQaybLTX8wW+2/tiIhFWtqXwHyg4EEReqkqOICqvB5R30Fi1IMKFp9j
         QbG0EgO0uySQ8iK4kGEkeaHsS4DwdCDhoFmRCSEiIb+uS6jAZh+u92fP5mimUfhFj8Bc
         N6PuGDg/49lNitO91YpTnTVt/jNs2BdbEocFp8Vgn+cSnuwy0Ly9DSq03FvuZmy/4Bwk
         Eua9DAugfWcOgxX/aILcl4C9rbQj9ng3tnu6by/astyaL7yT4mVQXamdU8qdPLbC8upm
         x/jw==
X-Forwarded-Encrypted: i=2; AJvYcCUA4RvDXYyA2oHl4wgpuS+etDuCRLFNcA8LxxIcXGRp06VDp+agTtMiJQp7gkC84V9IUIfYBETUGLbl02KXoek8dOYd25JXhEKe
X-Gm-Message-State: AOJu0Yy07sE9fCFbFKGlRdG5MRDLRd/9YzNCTiis1hrUeiNfASUEfCAl
	jAW6M1nIOKJjYl/nywbaYhGeisA0r6QNrg7xdqe/WrEct2n1KSF8fGhfeyESQQI=
X-Google-Smtp-Source: AGHT+IHkwFzGa42K0lP2KW9gzNESDDiOdm3xn4Wba+l9JaIz/whZ+7jA55R487yGvIAjR50to7XDKw==
X-Received: by 2002:a05:6830:454:b0:6e2:e526:b0d9 with SMTP id d20-20020a056830045400b006e2e526b0d9mr14036750otc.16.1708442997262;
        Tue, 20 Feb 2024 07:29:57 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:28c:b0:42e:1260:496f with SMTP id
 z12-20020a05622a028c00b0042e1260496fls2624479qtw.1.-pod-prod-06-us; Tue, 20
 Feb 2024 07:29:56 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWMtCdt9d3ggh9pac3B7vygjL8Iu5zowA/eGB66PWy4wPNcvo05fuBenoClFwD5ZpFRq7tMoa4cXNcLG2ldFhkrvgBOn76ItQfnQCpr
X-Received: by 2002:a67:fb85:0:b0:470:432b:e2c4 with SMTP id n5-20020a67fb85000000b00470432be2c4mr6096880vsr.28.1708442996134;
        Tue, 20 Feb 2024 07:29:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708442996; cv=none;
        d=google.com; s=arc-20160816;
        b=eUt7HTT38y7nsK8iVujIJWRVt5pjUNnO/r7J8aHk/5T0dvRLASAuhh7Q6HQch5pQl/
         OM0PTbc7PLFjjn6ljJmVYmPFQ61Twp9P/kblyN9nyYclmpF89upgZRdBLoD1Kg4PCDBJ
         Wpj0dmoTaTcem2uEtuWWJpE0ggIwU5frcflBXvCDRa29L+/lGvkW2DQYMgaNlvK70dFP
         c2Mkjuyhva90g7NCAYaJbGa5i1sEu+GvhFHQFqm1G+2YyZI9hxqILNFriT9msfGx5yGz
         ge/TTAy2aHa9z9siu8g7KjMV4XCGUChEIJAJ/d9Y/3UnfQTCa4L0zV3b0YR4FzgkC5gf
         xbQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=jFzp1Q5arjlw+137pLbJj9+ojfAWl2c9vU+ZBuhdAis=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=aIl6xfSMnyQgPF1fiR0g7fuBSXPcmn63JjeHH+CoHINn404Cdn/m+WzemMyiSH5lAv
         DaFo0GtxTzVEkNCfVsBr0+DoRTCAKeD/KzJbecvQEY5GjIcs70t6zEAVfXC+T6cnDSUQ
         IXDin/+oMem1MkpCwRvqrBwCRmlFvXpFQRJ8YV6DzQZQ6jXsO6CvfVp59ctG27xqlbJ3
         JjTWXnhPwFf+OSaFE1/iFXjXg61nhT7ydnRkfwmvygAiKPvOYE/Gh8FaiucWRogYQOVu
         wsZVuSvSl5CmsH4iALOLW78t/9h/n7Eo9ehkMkeQzfDKa/vjNeoe4Q9E5jHjuoA7+PHo
         hDTQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id c21-20020ac87d95000000b0042e2d462884si919202qtd.8.2024.02.20.07.29.55
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 07:29:55 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-288-WSi6rHJFOVeRVvr_U3lxkg-1; Tue, 20 Feb 2024 10:29:54 -0500
X-MC-Unique: WSi6rHJFOVeRVvr_U3lxkg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 45C83185A781
	for <blinux-list@gapps.redhat.com>; Tue, 20 Feb 2024 15:29:54 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 422311121313; Tue, 20 Feb 2024 15:29:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 090021121306
	for <blinux-list@redhat.com>; Tue, 20 Feb 2024 15:29:53 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AB27E87A9F2
	for <blinux-list@redhat.com>; Tue, 20 Feb 2024 15:29:53 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-62-ECiPNupiNHOSFSmyZwyrdQ-1; Tue,
 20 Feb 2024 10:29:50 -0500
X-MC-Unique: ECiPNupiNHOSFSmyZwyrdQ-1
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id D936D320E2
	for <blinux-list@redhat.com>; Tue, 20 Feb 2024 15:29:49 +0000 (UTC)
Message-ID: <9b63fae4-06f1-4e98-850b-1ee58376eb21@jasonjgw.net>
Date: Tue, 20 Feb 2024 10:29:49 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: for those using spamassassin
To: blinux-list@redhat.com
References: <d72fa762-816f-30d2-74be-bfd0c60751a4@panix.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <d72fa762-816f-30d2-74be-bfd0c60751a4@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Type: multipart/alternative;
 boundary="------------rz0JkxlVqle73Bdy1lFEl8ok"
Content-Language: en-US, en-AU-large, en-US-large
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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

This is a multi-part message in MIME format.
--------------rz0JkxlVqle73Bdy1lFEl8ok
Content-Type: text/plain; charset="UTF-8"; format=flowed


On 20/2/24 09:01, Jude DaShiell wrote:
> Since squirrelmail and mailcube have inaccessible web interfaces for
> screen reader users I'm using spamassassin to handle miscrients.

I switched to Rspamd quite a while ago, mainly for performance reasons 
but also for the positive review I read at LWN. In addition, I 
subscribed to the Spamhaus Data Query Service (free of charge for 
small-volume e-mail recipients). Spamhaus have configurations available 
for Spamassassin and Rspamd that you simply modify according to your 
user credentials by inserting a key. All of these measures combined have 
greatly reduced my spam problem.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--------------rz0JkxlVqle73Bdy1lFEl8ok
Content-Type: text/html; charset="UTF-8"

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 20/2/24 09:01, Jude DaShiell wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:d72fa762-816f-30d2-74be-bfd0c60751a4@panix.com">
      <pre>Since squirrelmail and mailcube have inaccessible web interfaces for
screen reader users I'm using spamassassin to handle miscrients.
</pre>
    </blockquote>
    <p>I switched to Rspamd quite a while ago, mainly for performance
      reasons but also for the positive review I read at LWN. In
      addition, I subscribed to the Spamhaus Data Query Service (free of
      charge for small-volume e-mail recipients). Spamhaus have
      configurations available for Spamassassin and Rspamd that you
      simply modify according to your user credentials by inserting a
      key. All of these measures combined have greatly reduced my spam
      problem.</p>
  </body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &quot;blinux-list@redhat.com&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--------------rz0JkxlVqle73Bdy1lFEl8ok--

