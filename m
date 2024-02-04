Return-Path: <blinux-list+bncBCLPHQH4XEIRBCN472WQMGQE4BZC6CI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E49848E5F
	for <lists+blinux-list@lfdr.de>; Sun,  4 Feb 2024 15:24:11 +0100 (CET)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-781720619f9sf485388085a.1
        for <lists+blinux-list@lfdr.de>; Sun, 04 Feb 2024 06:24:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707056650; cv=pass;
        d=google.com; s=arc-20160816;
        b=odX7jeUNepmok51M1nd/UnpRBkXoSTxYZFPTIuYyGoPu820JE+FA+Qj7UxTBcWLRpv
         R5z+rIp1B3rNd8Icm6jnBSEDpthO5BBv3G1MVAH+dS0yXtrbMIRIbn5D3XW6xZQdiC14
         o9f/OOF4uOPzACDLF20V24F3oyfBAGu7M2YK1itHvk8JiWGUmsL+WM0iIDmndkW5jgnO
         yfk3zhorheNgQdNa/ObqjqktnPznzqoZ5Au7m68nZwlGCOLOoIo77fn2Tdk20QfTmV+s
         K83hCAvGk+p1ldQh7i68z04TG+CYp1M7y/vudXjv7HSD466S/OUPdg755CmElkgQEJ2T
         G7mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=zChtWembutVtCrDlQHuzkg22K0FLUYIlYRYJZ16Npo0=;
        fh=ODuSXF7SZkUsQwAlY8MZ+PudIUlLFPkVf/AZyA4Aglg=;
        b=Khxz2aDC0EXm/tvyrwnNZhHmiS4DnH044dKOFmbiFIDtsHL6ri94RtM5/Ze2jqEOfo
         HtAFR4NDKLItsLzH3o1KrQ1LzDTOhmnbYzZA4khG6BHWGEMCN7uVROcV0Joa1IO9Zsyh
         hk9XVmUZikFVxZgLfGoHF7d2aIp3JMsv/LA+uLa02dP3YP8oTpRdycmvg1xiezm3wwIT
         jzzK784uKtuf2aazl7pWL7o4w+X5Ku7cIB0TL1ceQZpeYrbcCD2gHEQisvUY0LUtIFap
         LnRt9axA4HX2VZLxVzjTIhE6XgHqIGPg2E+vjkAudkZqbyEFLx+IdY6W2133IySx1kZn
         Gxxg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707056650; x=1707661450;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zChtWembutVtCrDlQHuzkg22K0FLUYIlYRYJZ16Npo0=;
        b=d9O775yI+/eJporERaAen8LCoIVizvtQqJFuZylM+NhGpZAcSRQv14X14TCH0qxLS0
         hPfJNLv0ebrHD8uVL6GllNWC6ric2kP5tDWwNpnU66TCIXsp+5kKZiiROHpg1a5JeKWh
         zfEvYgno9HM067UL2vNjCiV0gu004Aq4hHH76AUL8BZ86E7qRK4/7U+/iIFmbZCZai8d
         BGeEh3fPBNjEwwc5tZML6v5gUGJlDaLHUPjoVbh7Fk1GF2uaQEd1sp9sU+cDId7rce16
         BZEtZxN6QhXXA1Pse9FbI6YhngCPH4GCtRECZc9+CV7hX0AGfVsAKiovj1DWP9d1XlR5
         q5Hg==
X-Gm-Message-State: AOJu0YwhPNHBrTZaMbTNRpi+htF3fOdfCEIb/XoB6njxLxeqwJP91gJA
	g/UbdnSB61D5SzYRF8CKjgH7cRXge4jGrXc2+fGtWAZxWqCkhLE7eShk1JFFdxo=
X-Google-Smtp-Source: AGHT+IFWdINPv9XR3530FlDfRy3egWW42d655IbI8qSFWXhJqR4x0lg6iUE8opsQngHeImJ7QNNmJg==
X-Received: by 2002:a05:6214:5192:b0:68c:6b44:1f25 with SMTP id kl18-20020a056214519200b0068c6b441f25mr4260420qvb.52.1707056649616;
        Sun, 04 Feb 2024 06:24:09 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:410e:0:b0:68c:45f7:b8a9 with SMTP id i14-20020ad4410e000000b0068c45f7b8a9ls2909177qvp.2.-pod-prod-04-us;
 Sun, 04 Feb 2024 06:24:08 -0800 (PST)
X-Received: by 2002:a05:620a:4110:b0:785:5dce:86d8 with SMTP id j16-20020a05620a411000b007855dce86d8mr8427407qko.8.1707056648770;
        Sun, 04 Feb 2024 06:24:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707056648; cv=none;
        d=google.com; s=arc-20160816;
        b=UQ8skDq+I2buAXlFeb3uGE/Ceh8LyuUMgNPFr43wPl1EfpUY/ZK6zstS2Ik6TMCJv2
         odKcbucvw0TtuuDzP+QNxBxai3j+PWXmD258stU80JfvSz/LqNwrW+lS0JqZwZPXHEHV
         q4H2pTpvx77k1r+e5QBjnIWn+w13q1AqnKKnGQwGeoOlgtxmbFZ2tduI3fgghWfAawx4
         07l1FbqWECwz/UDvGKhZ2fZQvVg6jcAFpxwiNwxgG8Oi74HOhGHFt0NmTJcdOq2uOA2L
         67jcDRGMzk3PiQKuQZmMkN0hYUHjFLx6xeBBoNL/PxxwLNEmCNwOsupC2mQCl4zV/x4s
         k0aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=nPYIrHc2yAaSpbc/rZPfD1oI5ydCO0eTT5rKIyi6GHE=;
        fh=ODuSXF7SZkUsQwAlY8MZ+PudIUlLFPkVf/AZyA4Aglg=;
        b=h6AFnNftlR7aQm0qRktlL8koVVRJEjleWiZa/u2Iestor7U/ha2w3tlaBm/265q+Lz
         /IdchWbwI2uU1AlYG/9k0Ch9xBHJGIaseCZCJ7fysRJn1DOPjwsZLuu09Zg3ymStzHIa
         DC1TBSh6n7r4vlUAu9iLD7hamclYXCVKeX9l5v4pB2myjqFpUdC9ObBKzgKOnVeZc9w9
         wV+/FO0pNguAfOQbFADl/k61CbTb95IzPVmQ9dBtXUauFrPYbAWn+0OKyBHFCrVTQJS4
         gotVmWwIn79NpJYwIvREG2fRdmMUis9Xw5dNaFxPSOHkTyvrNkNrfQfwelaMOaWjG/0k
         RTiQ==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Forwarded-Encrypted: i=0; AJvYcCVV793i1jCT7+nYDVcjc/64RrhznFkc6ohY+8XLRz6/xgKf85fjqd1eHmpN57HdU7ZBIgc2OP0Bs9ZNe2y1LyFihWds8nzrrNZZbduP
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id o8-20020a05620a0d4800b007839a123f18si6274303qkl.269.2024.02.04.06.24.08
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Feb 2024 06:24:08 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-424-wznzuuTvP0CZBpdKPRiOjQ-1; Sun, 04 Feb 2024 09:24:06 -0500
X-MC-Unique: wznzuuTvP0CZBpdKPRiOjQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 985AC83BA86
	for <blinux-list@gapps.redhat.com>; Sun,  4 Feb 2024 14:24:06 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 91C242166B32; Sun,  4 Feb 2024 14:24:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A5E92166B31
	for <blinux-list@redhat.com>; Sun,  4 Feb 2024 14:24:06 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5D0863C0F197
	for <blinux-list@redhat.com>; Sun,  4 Feb 2024 14:24:06 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-279-HOou-I-mMJy9nieuDkCXNg-1; Sun,
 04 Feb 2024 09:24:03 -0500
X-MC-Unique: HOou-I-mMJy9nieuDkCXNg-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 3125F320E2
	for <blinux-list@redhat.com>; Sun,  4 Feb 2024 14:24:02 +0000 (UTC)
Message-ID: <3bf96e24-1da8-4080-9b7c-d205ffe7f03e@jasonjgw.net>
Date: Sun, 4 Feb 2024 09:24:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Programming lists
To: blinux-list@redhat.com
References: <20240204.052200.093.3@[192.168.1.100]>
 <28E8399A-4DC3-4366-9D55-2DE42241D727@cfcl.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <28E8399A-4DC3-4366-9D55-2DE42241D727@cfcl.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
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


On 4/2/24 00:37, Rich Morin wrote:
> This reminds me of a question I've been wondering about for a while.  Is there (and if not, why not) a multi-topic forum for the blind?  It could be hosted and archived in any number of ways, have topical sub-channels, etc.

I'm not aware of any. There are technology mailing lists which are not 
specific to an operating system or screen reader, however.

Harder to find are fora that attract mostly or entirely people who have 
or seek to acquire technical knowledge. Often, the fora are filled with 
questions from nontechnical end users that could often be answered in 30 
seconds by doing a Web search, or by looking up documentation. I'm only 
exaggerating slightly.

Are there any screen reader/assistive technology/braille-related 
discussion fora that are open to participation but tend not to attract, 
for want of a better term, nontechnical end-users? The Linux-related 
lists are perhaps the closest we have.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

