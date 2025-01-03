Return-Path: <blinux-list+bncBDX2LR4P5UIBBNOH365QMGQE3EJHYJQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com [209.85.166.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EF4A009D4
	for <lists+blinux-list@lfdr.de>; Fri,  3 Jan 2025 14:18:48 +0100 (CET)
Received: by mail-il1-f198.google.com with SMTP id e9e14a558f8ab-3cca581135dsf77012075ab.3
        for <lists+blinux-list@lfdr.de>; Fri, 03 Jan 2025 05:18:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1735910327; cv=pass;
        d=google.com; s=arc-20240605;
        b=SIpIo/HUGaiWZFe5UtKm+YmS4GNMSqTL+I6eKT4Tdx8st4scSazfb0QuWdZltgZ3Yo
         Z5nfCtintZFcImO80hrlmHwLLrtWtjsF90XkkQdHgXA3UInyEolL9k/+DNAUEX9hVbMS
         EDDW2XmM0JVdOoqRpqWGDlZVIeZtKRENL1NWxjMdv56Jc5aQLmV89rgAex4TTQvEIc2E
         6vPdziCTkQuSRw9GLSgJd3lzOB4WTaLGSWM99qHuQBFEWwKtt/Chynhw27lVjx8HOqVa
         fdkfg27u/U9qMnmIOK4StJTC0eZvCdaKCe6Ve+o4BZ6z9Om0wFMAF0oOFACkqPduv2KH
         vEZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=/BvJ6G+bB46qCjCzZgyLaLN4JCRthSE6bxB5CkXQR5I=;
        fh=0nj9Dc4wMC3zEMu2aRojcPCz11h2e7NRk6Hng3Bctkw=;
        b=H2Blp/fxr9FOtTZ9T0acw32ZHZBUy6w3mlPTAG2nWhh5ujTBlGmIIWf8WAhQ2bSB1d
         h5mGDWe5ay91OlyjVRmLNOA8kB+Bl/bMLymXGzj05Z5SqvZRZl5lHzoTHW3ltBc8/34N
         uzWW5oTpRYUX8g7ArVwcJO9itw3UPB8bJNBuCN0bntyYQGYCpxkKcNDE5RtYolQK3OIb
         DHchsYxHmqeCImfeOSQe82CAQvot6BrJOdVg8sy2LJWGhlRx5O3/iJ6z+dJEY8cICjZ3
         OB91Ft06VGdAh8vr/rMUlmCy2xnFSFOUzCe5NJ/w+ct2sMOjiCBK5AYvjh003leyl92y
         SZlg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of geoff@quitelikely.com designates 173.255.224.66 as permitted sender) smtp.mailfrom=geoff@quitelikely.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735910327; x=1736515127;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/BvJ6G+bB46qCjCzZgyLaLN4JCRthSE6bxB5CkXQR5I=;
        b=ki3dHowb1gT4bqgop63djchn/9d02KNYfOSM0HNt3dZmYkPsegBFspQGEmuIojv32P
         mN0wucNLZzuy14XfvO1qDt+EqnuLFrkjYY76L9r16totGDPQ7uHxVRHIACuNbccfARZh
         Nmx/6pgUYYUqhA/hXpWiZRfryMjPS790NGYjkXisVdmOCaN1beBZw3v+EcZOeIQr13r7
         Uesw6V1WYiA0D1dLHZEvhavO19JBPYtBKdyd/Tko8UGEBdcpV6iBy2vB0q2c4beNiwIU
         e9FP16RPDsQvgLj4eUj4BztN5lXsWS5pKxP0r/L7uri7XX+dhpgKLTD8DLYBdn0eVZjh
         75qQ==
X-Forwarded-Encrypted: i=2; AJvYcCVLQ4KqDWDNjykN4sGoWeOwnMNNjFET31xl6CI0PUB5SWPf4tHVppQSGhBsmsvp+B/8kXEBTQ==@lfdr.de
X-Gm-Message-State: AOJu0YwH6HnKRNg9K9H8uW/QUg3HNe7uxVRA34cI0tQWsamBl/eVDxvt
	KMXMO2ytWGEESpGpdP+Z/8a2xGzYsDV1gJyANuZJXgCWIBXTeg+mmsr2De6rFHs=
X-Google-Smtp-Source: AGHT+IGyDFaeZFCJe2zunhlRN3G93n6Lc8q6CGv0/Ha57xaPcKjaisAwHNOyDNpme32bgYoOR1VdzA==
X-Received: by 2002:a05:6e02:1aaa:b0:3a7:e01b:6410 with SMTP id e9e14a558f8ab-3c2d5151684mr438847655ab.18.1735910326392;
        Fri, 03 Jan 2025 05:18:46 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6e02:1582:b0:3a9:c962:f958 with SMTP id
 e9e14a558f8ab-3c026115c04ls17370515ab.1.-pod-prod-01-us; Fri, 03 Jan 2025
 05:18:45 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWdXDARIHmNCHrP/5TffN46wwxI+D/e+7UyEOLuAXTw3EA6iRFSCfKgrmnEHKBk+EQbYfkdjxrvTWRwPA==@gapps.redhat.com
X-Received: by 2002:a05:6602:6422:b0:82c:ddfc:c57b with SMTP id ca18e2360f4ac-8499e4c79admr4614442639f.5.1735910325151;
        Fri, 03 Jan 2025 05:18:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1735910325; cv=none;
        d=google.com; s=arc-20240605;
        b=dV8TdzRJUDfBD6LCMjJD/Mb3zkEEWhcVLBjw9We/CI4dsIQID9JAosu6PHINWL1tjT
         Gr+c6nE0bf5SAt9iLDwsOT8ZQXlb0sFgeul38RpGtvJ9kGOcWh3Ud6i+zkbDSq5aS1tY
         wtQBE7voyDJ/8hhem5D1CUV2PVmRnhbZk9LKpfr96akDkwenqOuYegFdipRVamVZ8Iwl
         VkoOUY/aTEw3Ux0gWVOA+/9D2waEv5+AS//xDuunsNrlWps61GT5MEnqI8scwpJmWQnX
         8X0t4YY5loerntPuoTWQDQ3NyDhwsfIAImUrKnbbjoM545Ov//EyRD4iJGR9KBA2ClmE
         x3yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=UYhayv4BuCCRj6ElXfK1RMRcXeDdLas+JIEz0nT4wbc=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=YfiBZXNAhti2OyTMsI9H4uj9FvIFSpWH238fdDzOVG4PHyeA2lL4kxeh97FjSeYExV
         EGJgONiNEIlwrq+iz4SfCiXAy+mfZBCe8E9/qBNs4Bv/BWYLPbovSHfPCVJA5hJqjutM
         AAcYs3w+Fq8PKiLHbtpVl07sf+XYPNbJ3XT7hnb0YHEiiA1RMWfQRxKZxaqcx4F7oFo1
         7t+bnSJXNPkwcMxJX6hHw4Zl+q1SSCLLqVhrKM5h3pHlSwdDkQ7ldyjw0rqsfuqhIAs0
         ZpC8LQZXm51oRIEkk+CbYaRB6PBpV/RjXalHF1eahmIiRRnPg1TqvSGsM16UZ5b5VVGL
         1bTA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of geoff@quitelikely.com designates 173.255.224.66 as permitted sender) smtp.mailfrom=geoff@quitelikely.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id ca18e2360f4ac-8498d8a73fasi1578246739f.89.2025.01.03.05.18.44
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 05:18:44 -0800 (PST)
Received-SPF: pass (google.com: domain of geoff@quitelikely.com designates 173.255.224.66 as permitted sender) client-ip=173.255.224.66;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-435-oQ72THMZOSOiAKRGG6lmqg-1; Fri,
 03 Jan 2025 08:18:43 -0500
X-MC-Unique: oQ72THMZOSOiAKRGG6lmqg-1
X-Mimecast-MFC-AGG-ID: oQ72THMZOSOiAKRGG6lmqg
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E14F01955BF7
	for <blinux-list@gapps.redhat.com>; Fri,  3 Jan 2025 13:18:40 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id DCF8E19560A2; Fri,  3 Jan 2025 13:18:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DAC5A195394B
	for <blinux-list@redhat.com>; Fri,  3 Jan 2025 13:18:40 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B4CCB1956070
	for <blinux-list@redhat.com>; Fri,  3 Jan 2025 13:18:39 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
 [173.255.224.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-629-5k_qAvHNPPuccsFfqtrV2A-1; Fri, 03 Jan 2025 08:18:37 -0500
X-MC-Unique: 5k_qAvHNPPuccsFfqtrV2A-1
X-Mimecast-MFC-AGG-ID: 5k_qAvHNPPuccsFfqtrV2A
Received: from [192.168.126.128] (unknown [176.230.58.49])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 14D24A0A5116
	for <blinux-list@redhat.com>; Fri,  3 Jan 2025 13:18:35 +0000 (UTC)
Date: Fri, 3 Jan 2025 15:18:34 +0200 (IST)
From: Geoff Shang <geoff@QuiteLikely.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick cookie jar question?
In-Reply-To: <Pine.LNX.4.64.2501030115090.1232740@users.shellworld.net>
Message-ID: <8fdc478b-6b6d-6ac8-8291-cc59529addca@QuiteLikely.com>
References: <Pine.LNX.4.64.2501030115090.1232740@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: KQ9Fw8lGmmqExOkGiAl6xyXsxut0Ufqs9ZXebiRwols_1735910317
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: z5TTLCzMlYsrkaeUJl807XipP4Mv9_rmoJYWA0qNCQs_1735910321
X-Mimecast-Originator: quitelikely.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: geoff@quitelikely.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of geoff@quitelikely.com designates 173.255.224.66 as permitted
 sender) smtp.mailfrom=geoff@quitelikely.com
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

On Fri, 3 Jan 2025, Karen Lewellen wrote:

> can anyone confirm that the same key  k brings up the cookie jar in links as 
> in a chain, that it does in elinks?

Apparently the cookie jar key in lynx is control-k.

I've never personally had cause to use this.

HTH,
Geoff.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

