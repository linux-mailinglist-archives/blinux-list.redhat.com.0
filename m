Return-Path: <blinux-list+bncBCLPHQH4XEIRBMHXQO3AMGQEP5XUKRA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9E395596C
	for <lists+blinux-list@lfdr.de>; Sat, 17 Aug 2024 21:36:18 +0200 (CEST)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-709561cbf29sf2478326a34.2
        for <lists+blinux-list@lfdr.de>; Sat, 17 Aug 2024 12:36:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723923377; cv=pass;
        d=google.com; s=arc-20160816;
        b=GIuTYrLZ2VwHupRMIQyArjCTQzE6XzPN3EZ/PG5wYZSrM0a5QhCWADdzntfpd3dxVk
         BMNK+f/kCjwwTNoFMv8Fz+D/ioVQqaN299AGnLmjyPOXupJt07Y4NaBdy/O4hxbAJRGM
         g5OAJLCskTkV044daHNmk57NGRzf1OkyPhTnxgmaUKwurvcOJ1a0i+5M1ykf/3AWiHxp
         HmSe63Wvp21x1eJE44vkAx4wj8n9PJhQndeUXvzunHCKsuQcmXKt5SXcJFv8402dE5rj
         BiAwOnCR+4oLpZA+4eIokD682RgH1xHr2iKJxVXDjVIntdUjkZgkSPIC+Rcx5JQsnmMj
         rh0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=kusIkfRLNquS+ztUJvrhe6ruMtJsKEVvE2kUN+mwaWQ=;
        fh=z6MRwbkootP0qFIGvIz+czQXlGJVvzHINQvHAPZN13Q=;
        b=uO8ueSDPdobz4P+cHQY20XT+5jKS6ndRshvMUKvdgwqQEWUaxahYJrVz1xvp96hVDF
         Jyv+jhQz+M/xyR70zzBuNdRNY5kgSwLP6dSXo2VvM3lpfTdPZXey6U3pLWyEYaw+Rnfv
         3mfhSNJ5SkHWw7drnRMR1UrWHrP0VMICcQDimF4dIXQN2vEynr7EQW3CozXJQypEIXsr
         fstUknkOl3JcDSSnFTpYkqcFcqDHLY1QGPXVef0i6Z/GJodUMiqclRiy9kSHCb/DOs0j
         j2P6cdReB7UdgeNdPVR0KoDYMT9Z0ajjnAYpTi+86gmryrad96+uO7ftR0ykUXLRpiea
         66jA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723923377; x=1724528177;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kusIkfRLNquS+ztUJvrhe6ruMtJsKEVvE2kUN+mwaWQ=;
        b=I/go4hTIjDsf34J+z4mDWssFb37liDTMoR+EZO8CKGiGtXHqIMla7E4vPQfEafLFco
         kQzIvhV0y+uLxpn9iF+D1iywzy1w2ncTFoIdcNzweyBXGqqVqdUWNJPALuTFhlS7HaWv
         L6bR6qPiwLT0fkjKhu4NHOCLl4GfKDtyWrK2dAmObLPfsEvgPZmmfPq0O0ysuFL5CJjs
         lPxdIi+nt48iYROFCh6+xC+jk/TBKGAOwjZRep4Si/tHJhtJvksYZ+tHilyOlbdI+v+I
         owQEhlQLqtiUhEpG1vyzkxPCfUA+V/IWMTpg0AbNR4OZFCI59Sg235BiIDNv1yYc0tZ0
         aLPw==
X-Forwarded-Encrypted: i=2; AJvYcCVHTSPuA1aJEYTEb6h7AYgXUWXgMw+0rWRT4fCi423pHuBvBE9ZSWkEpuM604ZEJ7Uxsi5bwXdB4Od4szHNiqc1kBdOTxVVaZtz
X-Gm-Message-State: AOJu0Yx3MZa8D7XP/0ejxzlQK95qKoZrAYU6Rut4HbG9jxMDxC7hpphD
	EjXK+Yo8XF9u3xQp+Mba5U83WKlY7kZKYwhvERmbs+HgMg873qcE5iKJpDZfjLk=
X-Google-Smtp-Source: AGHT+IFd4Ki6qIWyP/XvPi+EaLo2OnjwRqOYPu//1t5c8fZoPp3csefj6UUaSj6euQUSFHSLeAKk/w==
X-Received: by 2002:a05:6830:43aa:b0:703:5cde:3a1f with SMTP id 46e09a7af769-70cac83035cmr7926872a34.1.1723923376965;
        Sat, 17 Aug 2024 12:36:16 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5ce6:0:b0:6bd:735f:a702 with SMTP id 6a1803df08f44-6bf6d398d2cls13858736d6.0.-pod-prod-03-us;
 Sat, 17 Aug 2024 12:36:16 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV4Lut70C5Gzsn747v40bnEf7hD0kekvHJ64Cgd/DM1jpyYddT/cKoMUpbncHbpwu96YU26r4D8IXisxbUYukWrnQ+aIg/Wb+dkAtJv
X-Received: by 2002:a05:6214:524a:b0:6bb:841c:ec72 with SMTP id 6a1803df08f44-6bf7cd7ed31mr83237386d6.10.1723923375910;
        Sat, 17 Aug 2024 12:36:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723923375; cv=none;
        d=google.com; s=arc-20160816;
        b=bTEnp2TnFoqU5y0HoC7Ox6UL47LPiKdNtaKhEcYysSmK1rFR45Sb8G+u16E/mRfKLH
         pyc4oSoahsY39Ghxl9eJeCz8lCYq6OfALDu9u7nIiWbHZIdwDbnCGs83h4TWwzPsaAL3
         D4CtFOm+ZTAa2dWNb3RNsu38gnes8KYOMhzXW8YsI8W8885AEcvX8FvdoxMRm/GLS/YF
         bviZb/1B9aKdOiP2VCyWDhqlwf6R3yUXw24Xu463qCqZefLuewRuhjldyZYcjAH7OfsX
         4UYkFC9PttycRGlZsRm8/qML/F28sUE5rP7wglJ1JJneJ/36hvHv1zYcA9fkZfuV1qC2
         wlHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=rsdL5MseMeHmjQdu6i+zVomSzYV6uwzw+UGCfyOd5xI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=LWeE9TRIvVPhmywpEAQvJOMHAN4aTNKJj3QXY/EzzNkxQFz4hsTmwIeZHzHJFH0MB0
         cBJqA/MQQZ7Dy98v1vkh47gVVwiSw3llca7jSzNodEP+S3IqCjUsv4KJ0fnusudrnJro
         IJJD/EmpF9yXDEeEQdtzhNtN+MpjgHQl4y07hCxUpFJNAeDKoIzbWMB1StBbU3HEmYxS
         /Grm/s7Dw9/jg9A8v2jvGSsZJFttI0FuFsTCr8mTmAVwH1o2UFUmrCW4NVcJKgFFZQ3Z
         nCsuS2ntLvizkrUT0uR3hSCM9SGHokGvZ9wh9SNKgyWpCkBZP/9BRHLQxmcvEKrBM3JJ
         ASSw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6bf6fef046asi71637346d6.360.2024.08.17.12.36.15
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Aug 2024 12:36:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-651-f2cU9STlMB2NO23KBJ6Smg-1; Sat,
 17 Aug 2024 15:36:13 -0400
X-MC-Unique: f2cU9STlMB2NO23KBJ6Smg-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0671F1956048
	for <blinux-list@gapps.redhat.com>; Sat, 17 Aug 2024 19:36:13 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 007861953B84; Sat, 17 Aug 2024 19:36:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F1DDF19540FC
	for <blinux-list@redhat.com>; Sat, 17 Aug 2024 19:36:12 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 260691955BF2
	for <blinux-list@redhat.com>; Sat, 17 Aug 2024 19:36:12 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-512-Jo1cKZ8IPQObqH_Fp7GiHA-1; Sat,
 17 Aug 2024 15:36:08 -0400
X-MC-Unique: Jo1cKZ8IPQObqH_Fp7GiHA-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 0C7223206A
	for <blinux-list@redhat.com>; Sat, 17 Aug 2024 19:36:07 +0000 (UTC)
Message-ID: <f5b7447c-82cc-4fab-9e97-85be87d5e43e@jasonjgw.net>
Date: Sat, 17 Aug 2024 15:36:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: emmabuntus wifi
To: blinux-list@redhat.com
References: <2f5ffe14-428d-85fa-3ddf-8d080b9c72af@panix.com>
 <93065d1c-c24b-4492-bc7c-a5a9ffe8096e@gmail.com>
 <e0bdaa40-6783-4634-91ff-42f3d1f072b4@gmx.it>
 <9b92c4ff-0e8f-3e9e-46fd-71d961e4ae49@panix.com>
 <846993f3-1c0b-4ae4-9ff2-e0107649c855@gmail.com>
 <460a6c10-5ece-23e7-abaa-8acbc346b07a@panix.com>
 <55ddac5c-5f1e-41d8-b0a0-04de9ba2eb5d@gmx.it>
 <80016b6e-f9ee-4649-bfc7-e3eaaf9094ff@slint.fr>
 <dfe37f43-4cff-4824-98a3-03db71574034@gmail.com>
 <7c18c2e5-9a5b-4ffe-ba0a-1ab33f51796f@slint.fr>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <7c18c2e5-9a5b-4ffe-ba0a-1ab33f51796f@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Type: multipart/alternative;
 boundary="------------UoiPSnO4JV0tLIOyUJdBCxI2"
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
--------------UoiPSnO4JV0tLIOyUJdBCxI2
Content-Type: text/plain; charset="UTF-8"; format=flowed


On 15/8/24 19:01, Didier Spaier wrote:
> network-manager is installed so the graphical command nm-connection-editor is
> available. The command line utilities nmcli and nmti are also available.
Note that the nmcli-examples manual page provides good documentation for 
establishing a connection with the nmcli command.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--------------UoiPSnO4JV0tLIOyUJdBCxI2
Content-Type: text/html; charset="UTF-8"

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 15/8/24 19:01, Didier Spaier wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:7c18c2e5-9a5b-4ffe-ba0a-1ab33f51796f@slint.fr">
      <pre>network-manager is installed so the graphical command nm-connection-editor is
available. The command line utilities nmcli and nmti are also available.</pre>
    </blockquote>
    Note that the nmcli-examples manual page provides good documentation
    for establishing a connection with the nmcli command.<br>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--------------UoiPSnO4JV0tLIOyUJdBCxI2--

