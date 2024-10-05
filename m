Return-Path: <blinux-list+bncBCLPHQH4XEIRBQGNQW4AMGQEVVYALVA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id D660F991831
	for <lists+blinux-list@lfdr.de>; Sat,  5 Oct 2024 18:18:09 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-45b6057797csf44316771cf.3
        for <lists+blinux-list@lfdr.de>; Sat, 05 Oct 2024 09:18:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1728145089; cv=pass;
        d=google.com; s=arc-20240605;
        b=e1J29iUYGYykQJAfj04++YxY2v9RHTlPieoiERhghQX+EO85Aa8t7yyVmuBIYZ4eGz
         BGVfUhTjn2Pcp5+RZWtxd3/hOZ2MkHR/gcgyrMEKpz+f+LebpPjIiocUBwodlqx2DEXm
         jRQ6I6Enh8yNwhhlIllRrw65vZ6jb+XkQ9BdNENxqaigz/bbuy2CJ8hyBx1hgHLw8I0S
         U1V2sSfQ32ITSlI3cxFtE95MHBseZpcuN8o0sTm+bJ5TML3h5BNV0hWK8yHVLMWC+x31
         c0+bWzs4CAf/iW9PYDIzgwYQo+/Gwx37amOMVWaCnnoF8cCD0P0idHxK/RqrFEW2N5bk
         vJDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=lYdrAZAIhQ0AsgIhEsHTR2KajVeGJGllFSCtcrf2Pmc=;
        fh=Y7f5tqqx+snvWNhsTMt3nVneBj7K2HF57EHn80/EqZo=;
        b=eQbUoakT19mDggEFiIboAFM4EoaY/vo/kSWVBuZJUbPR19G3OTtbI6R6UQkis95p9v
         zKwns/dzdicdIUyZJTP5ReAsocwbJgueV1u17+jj2Mf85vPkXNrvAJ+BTgjujpP4t5al
         UbAl0lDuJvEu0L6CIDroc5KzTqeWwjIUQhp5u3/ml/54R+7afa831HpCWLGZ9BEPX82N
         ev8v8H4EeeElNXZBcI54+lOm0QbZ6q0qDXl3dZwJAE954ujiENDQQNQh3bAYAnuScsKg
         oUj2VT28QA2v4UOp4bnHAEBMuMP0nBAYEKVM0gcNOYmbZo11meFACRSgPAalh1W7vjKw
         DUKQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728145089; x=1728749889;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lYdrAZAIhQ0AsgIhEsHTR2KajVeGJGllFSCtcrf2Pmc=;
        b=Jw0AiFse7o8EsbrzJZnaWwTJGfpurhiCm5ljsLcZUdBOrFhrRE9R7aBYjUYvjjTCHh
         a5aylfOZNzorqZOwRU1r+ScCFgy+wtrgfw290EqYOqagO1ihPzDswqBIwII4n9cnfzLK
         /EVRJIXWs4B7+NhHFXQc92VGmhFfg7B2iXPGWCoe9XJheqR/X0N7BpYlyEJ7VIuhki4C
         dYbvIPrbQRsLftd0JxB1p4f47V/o3zbtId63q9Aczg6PQfS62SXbQSkeAeuXrFx1yOQx
         YVSWUzWZ9DwP65uXXkLcVnbv1tHkUvEfvHwtjcKsSDKx+mKRCDtXQ38ZHf8mFlcBXklj
         GjXg==
X-Forwarded-Encrypted: i=2; AJvYcCU30/b1ufU+qNqHo/VaLRkN8rjGWYbWzdnYTSMH4cKVWxs5zc4RzM4l2OhrU5vksOB7kJSQTQ==@lfdr.de
X-Gm-Message-State: AOJu0YzZyLkYLxxdLoXYfRjW0dCnKHDb7z3azRLABdL7/qYAEWAgZDrg
	N6xCaY28GMO9Y2VL5TYUMv5kSQqTryy2V6WJyq+ROzW+r4zD0Ng5dSY50aHgK08=
X-Google-Smtp-Source: AGHT+IF1FMJ7bowXYt6tM5sSnee58CGRRdBxcGJ5dbupDBo3dv94ebHQGfu3d8fqox8wfn2ra6QH9Q==
X-Received: by 2002:a05:622a:2b0c:b0:45d:a1bf:6b53 with SMTP id d75a77b69052e-45da1bfe70emr63840271cf.56.1728145088570;
        Sat, 05 Oct 2024 09:18:08 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5a8a:0:b0:458:1588:173e with SMTP id d75a77b69052e-45d8d5d3f6cls50301791cf.1.-pod-prod-03-us;
 Sat, 05 Oct 2024 09:18:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXiPJjyFL2Fv81eJB7GmwkGlwal5PhdfmzQxwwuSE+sPSBLK8G51ZqkBuxesArr3pj11B76+b35U+sl8A==@gapps.redhat.com
X-Received: by 2002:a05:622a:1902:b0:447:e769:76fc with SMTP id d75a77b69052e-45d9bae31c0mr88262741cf.34.1728145087712;
        Sat, 05 Oct 2024 09:18:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1728145087; cv=none;
        d=google.com; s=arc-20240605;
        b=e1Xa0JSZCsuhoXn0MzwOY1rFWLA3m1qPWEn5XUACE5cK3J67MneF7Ts5J2XbZzv5+c
         Ehv7ylT3LTJgq6d3onfeZeGq1P20WBkpcSpeJdLLQ2XwQPrK58CB8rIzHm8gAHMA9pXe
         WbN5QbbgvsdhaXd2uOAsfqb3ixe6hHdi650/MlMdWdwPVN/2JiQLC8YSGlFwjej6qfbi
         I2jalKNsX45jeTJLgWQLcMdx0q86PVADV5/VdELam8k6XNGhyaZKRzS5FreP3AELwPTl
         hwMd8w4oq/vyhJJQdnf1JYvU9W1HV5//6M4JqCFxj5O4Eju8+eZx4cKhP9peBk3fxSu2
         rEvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=TRLj+qpkB5yLAzZ7yNq/ZlvO6B5bbQcDLdTQNjTK1pI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=k14z7QEbSiI4ibq1TPnZiBfdyL2hmbGN8kuOS7uJqnhHi5zW1NsG0CakRJfszC4aO2
         Kq9EYNWpOpotmxrKDI8DGS9Pybu4EM0eLJdjBk+ZsZHEAQdN2C4z9n7A+2iBvxTBxYMh
         RfwO3j3HZtNbbS3XtyqMqMjK0Jo+ABA3eDQIN09vlNuysqSEIZHelYhj7evhpXzOBeoa
         Yg6E9h6rluSZNsw5PwTrrhqsI5ksoeus6P2uNQzx0UtwuhmuZvSozT1Pze2wSu8XcNLb
         99wU7HG+oXfO0ZZ8mL9rSzibbdtbNC9EZCR73442YPaqBGXOZ8y0DvAqdUSjPr4E9993
         ekag==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-45da763ddc6si23748011cf.434.2024.10.05.09.18.07
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Oct 2024 09:18:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-267-Y6sDSiylNFaE8eW6Xo56Gg-1; Sat,
 05 Oct 2024 12:18:06 -0400
X-MC-Unique: Y6sDSiylNFaE8eW6Xo56Gg-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7B78A1955EAC
	for <blinux-list@gapps.redhat.com>; Sat,  5 Oct 2024 16:18:05 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 75F37300019D; Sat,  5 Oct 2024 16:18:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 735F83000198
	for <blinux-list@redhat.com>; Sat,  5 Oct 2024 16:18:05 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D5C7819560B6
	for <blinux-list@redhat.com>; Sat,  5 Oct 2024 16:18:04 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-641-N3i1qno0NDeDOHDrbvIKjg-1; Sat,
 05 Oct 2024 12:18:02 -0400
X-MC-Unique: N3i1qno0NDeDOHDrbvIKjg-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 6725032065
	for <blinux-list@redhat.com>; Sat,  5 Oct 2024 16:18:01 +0000 (UTC)
Message-ID: <5218ea2a-93f5-4c25-bc4b-c6421987ad31@jasonjgw.net>
Date: Sat, 5 Oct 2024 12:18:01 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: a groups.io question?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2410042205440.1109016@users.shellworld.net>
 <26333147-a134-4715-8eeb-400f9595a081@jasonjgw.net>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <26333147-a134-4715-8eeb-400f9595a081@jasonjgw.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
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

I forgot to add that, as far as I know, all browsers that are accessible 
with a screen reader and which support current Web standards require 
some kind of graphical session. You can invoke them from the shell, but 
you can't use them in that environment.

On 5/10/24 12:13, 'Jason J.G. White' via blinux-list@redhat.com wrote:
>
> On 4/10/24 22:09, Karen Lewellen wrote:
>> For those of you both in the command line, and a member of any 
>> groups.io list, I have a question?
>> How are you logging in?
> I seldom need to log in, but when I do, I simply use a browser that 
> supports modern Web standards.
>
> To unsubscribe from this group and stop receiving emails from it, send 
> an email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

