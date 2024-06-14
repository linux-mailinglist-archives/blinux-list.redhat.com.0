Return-Path: <blinux-list+bncBDM4LSNO5MHBB56JWKZQMGQEXMHEOMY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB27909348
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 22:15:53 +0200 (CEST)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-5bb01391517sf2264498eaf.2
        for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 13:15:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718396153; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ImASeyaQxcLZj1rXjXZCxqLVuT5EP42c5oV71srLHwpt+L6ugtWVHujQ7cHpLsEWp
         aSkfLg1ZYzYl6HOtxwV7vLx1vefEcCcGIVev/bG/+V/sz671f627nR8FXWSMHFFogAS9
         +omMJk6hu+KuE/geYA/CWrbhGlATQI42PpUeVbURBwXQhI3fFH8zoC1Jp5Mqfrxwy27X
         DGZpqz/eC7uuPE55ou+aOjcEJdgv1Lg2par+183k9nDWgfmy94sOeoKNOQGHrJ4aF0tv
         mzpMDpqKofICDBL0Or4AgfcK+ntqOv0r3ZgD1mJusFre6wvmZxwMd/jT7gPvU7E3eh6J
         SE3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=rTRpwQBBxufKEgH41AgyXYnvKrbebQwlkS9FWRKtPxU=;
        fh=Hud+t+o3eGEyOwtgRYGBodl6UE+aL6YuO/4viZErLaI=;
        b=EaRw2rB/am3Jpjo4KJ0zdgpJrHzJmAuXu1tAyGdqTyW96WNtDTth4LQZnB/8RZZVYn
         GfxeTC1dDg+uJX/MOcf9GbATgm6oZxOlCW7XEWQ34hRvIADZPmF/SHP+EP0t9A54eTV5
         rw0l94Ic8apjnujvVmMScmyC2XLbQeLVtz1OWyB9el6rpdYyjxBoL8ojK2jW7USoAsEU
         sLWAxTQgp2JKzL0hVpnPNfSJMV2c5Ot1j+SnVKZ1Sv0xZKEOTwz7a2ZfJMiwhTWvEeBb
         BiBF2PUvVRfVHTAj2gig3RkYAbq3GrVlpLrjA93o7DAE9IOD4e5HGUvVJYPfeLZi61VT
         b/Hw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718396153; x=1719000953;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rTRpwQBBxufKEgH41AgyXYnvKrbebQwlkS9FWRKtPxU=;
        b=ZdUPteuqDGy+K6N3qerA1RaAbh2bE9c7HT9nriqvRtlldNZoRq3i12jxfUFbnJM6EG
         BkbsK3tvBkhsnzq3hpL1vK55gnZNvwO9l/TbIepj3FArv/HMbymIfEgDwOI8+KmLZGKG
         cAze3fXUNICpW3MRPZnrQwhdLgkpbOQKalwwzS9GFroGf8xdPx+XR4HBMvbNMCwikTi8
         +gZYxD8l+ZxpCvwzHDUiFGrmBC81jzoh4st2/J/kNEpJvQRe9tM8+sDEi62P5noazzaL
         DUJhC4s1N7LLp1t5yKiulOrohrpc+6XLPQAZdhJHSzipKuYZB7FFQQIOqnNfBRjYR/Nx
         nfpQ==
X-Forwarded-Encrypted: i=2; AJvYcCUD7oTOuIbE6foPIbjbru72AMwbcqyvVyfmeP7bfcEKn1Zblk2ThFfY/9J1K1Kh/jqmg1M7EM9wKGIZSyM4N67NSsbKs1Dcd+46
X-Gm-Message-State: AOJu0Yx0xcM2XnIAiPh9glxa3L++hX4/n0VlCalN6iKd2RQjKRhb9BQM
	E8em/j0IcwX3rnv9njkK3NRD26YQ3LEDgAiB2klXQZPxMXsrrIkLd49u5RZ456M=
X-Google-Smtp-Source: AGHT+IGj3oEwRcJbbpuOUDbmoHYT5xAXOZGwYlUUrv9zyqwnIMneUagXxSjHhuyNw3uZW9YTjqBh5Q==
X-Received: by 2002:a05:6820:1693:b0:5ba:ffcb:c759 with SMTP id 006d021491bc7-5bdadc3026bmr4274314eaf.4.1718396152287;
        Fri, 14 Jun 2024 13:15:52 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:5801:0:b0:5bb:19da:9170 with SMTP id 006d021491bc7-5bcc3e086e1ls2216627eaf.2.-pod-prod-07-us;
 Fri, 14 Jun 2024 13:15:51 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVXFjk785pihSBhXLsyiMFCDHMdGd2EBCSSfWlHrB5DCqAL8fvTNnqHKfmCetheh+PAyfvmCL/b0U7WETtHCBFyG31Q4cvPTF24GemH
X-Received: by 2002:a05:6830:4413:b0:6f9:7919:a33a with SMTP id 46e09a7af769-6fb937849d6mr4811079a34.19.1718396151066;
        Fri, 14 Jun 2024 13:15:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718396151; cv=none;
        d=google.com; s=arc-20160816;
        b=BKJK27TSK2iwz+yC9eosVtwMHe4EV07E+9EQ8iwhuMiF3NFI5XhffP+cytmsN0C+N3
         +eURYHXyvQiAg8MaxIm4kEIgrimhNiPu8FzOIn+VViXfnkFHrsd3+vDg9kgM+8d3YkpB
         scLAeD1T46CkZGH/qrWeUNaAzsLjg0nSJGdAEEedS84oRemoX5+rB+hl9oU2WfPqfNRK
         O0iZDqI1z2VM90TUWKouBjA4o4LQF0PdfobrD2JmGo6YrWWnanUETXR88bNsG5CXFGoe
         yb/c81EfXYgH+W7wwp06jV3SxDHCcWe4eOpHbADJhhbwMQNkD6efdFZ4Ddo6yeN0Z8bR
         CcTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=R1XXgel/e3zR7H7PKVpY5cCPfRc/g8s6AZLfsPRg7WA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=sXdnHcmgF2iDbj2zstxDNsw2waRAOwZ+fMlsVsuQ76uELYpcNYb+91Gv63XsxAW2aW
         Smz+y5JUiBi5KnoS7cWshV2rcRuPCd7LGNimmjxjCsPLhU87qK25aGxMV7WZE1VyS6E6
         82ugJqllfrOrXspwZ1bN1VK5DJgrEHCyxiw0UAwSivrAIzWXefEDFLgZUPp9OzG6ylvc
         /6FCqMOHTRkNzHmJFwMzU7IufyHVQloHXJueGBRlRTTbtRMaJtX5BOhr2kHNx7w1o5QM
         73N706o6eVTFbBWmV0kDENNqFWWAIg/uU+RakA9I7HzcdyyhTkzIUlVK4njWcrO1F0Nv
         dA/A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b2a5b8b279si43678856d6.586.2024.06.14.13.15.50
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 13:15:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) client-ip=74.208.4.201;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-390-cZ2Gm3wgNw2qvK22-nwpug-1; Fri,
 14 Jun 2024 16:15:49 -0400
X-MC-Unique: cZ2Gm3wgNw2qvK22-nwpug-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9B92219560AB
	for <blinux-list@gapps.redhat.com>; Fri, 14 Jun 2024 20:15:48 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 8AC041955F2D; Fri, 14 Jun 2024 20:15:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8846019560BF
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 20:15:48 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C63101956096
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 20:15:47 +0000 (UTC)
Received: from mout.gmx.com (mout.gmx.com [74.208.4.201]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-91-hNFOuA-8MnG1sYPYzsKqJw-1; Fri,
 14 Jun 2024 16:15:45 -0400
X-MC-Unique: hNFOuA-8MnG1sYPYzsKqJw-1
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([195.16.11.121]) by smtp.mail.com
 (mrgmxus004 [74.208.5.15]) with ESMTPSA (Nemesis) id 0LvDBE-1sRSgE1PAQ-00s9jB
 for <blinux-list@redhat.com>; Fri, 14 Jun 2024 22:15:44 +0200
Message-ID: <5f7337ad-6908-4b12-8727-39436eb8b012@mail.com>
Date: Fri, 14 Jun 2024 22:15:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: What Happened to duckduckgo?
To: blinux-list@redhat.com
References: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com>
 <a0f98110-689a-41e6-a1b7-8c5f7b6cb939@gmx.it>
 <7d5aee79-0f57-4e25-a457-252395968076@mail.com>
 <f30e4990-208b-467c-8fb9-545c2949b668@gmx.it>
From: "'john doe' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <f30e4990-208b-467c-8fb9-545c2949b668@gmx.it>
X-Provags-ID: V03:K1:yOhtL6v4SSFfB5SnvWgBmZi7R1x9SVWEHivp2APr8iqoNjqspo7
 xCBil9/JeHIshMGoXA9kQAqqelcghCwYbFCNVQnNUDCuTIQy9rMSLlEfJ3PEcH9RarBAaZg
 aaUoF17VM2/3slouXjWPxoKG4cE6051lNrvHVXtQnv4HVhClU8uLqTEA4Cn7m1sYgJ+c6Ue
 1tMwErWKC+pg450o+Amkw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:eNs6ZC3Zjy8=;nM+YsK+2qMyypc0BvvyaHUvQ3GE
 v6cEn4fs8e3a4ILcznL5uv7T3wHqH/REDe+TJpAD+mOegSSjN9kLenuaIDjwBZLFKlA9sMUaA
 qYwrw12AL81wzewM+bxRtMHWYWOPxYHN3TchX+HmvI90AyKB12fR/a0CayRI7gTZszzz1Qih7
 YxXZ3ikvX8yOOCJppfjR48k4DQ+0rQaKqBNIHGd/MCp27BJq5waRXDFRJBRr4aZtoQ+qLNu47
 T95cbjK/fapWu2d8YuAGfoFKdytacgADoTLi+hBG5zdKfqhxjyQuGAu1JsM2ux/rI9RAfB6Zb
 SntCS6PpFkvHXaEpr6uSAQ5h4e4eCLGQcRusD6dNy8byMray8rYc3qv2VErpJsYLorTuqbFin
 HeMX0fE0jg7xtxXwiQRqbq6UU4r6MWwCwRTapvaf0EH0C6tqmH7etiEwGYIZDBmiWoGYRRvBu
 j2K9yH7IbLiD6MKHXa4Xt9jnQyZK+YZdjoA3DBVyShLE7dj4bb2XBjcj60L+HkRw0z9HxqQip
 1OjuwnkcBCvCNj1XdBet6ZAbhIOvfqwOcy8Ue9c5qT0Zo8bnl7DVRBN2TPSecP29N2NBoIsyL
 6ffx2CopfLPdSf52PkCMdFHA+2IHBYUFE9YOsXv591o+YJp1pMg+QlDuson7lclBKIfMUX3/9
 knxi2ObNTzLragVe5SkDif4F+yLOq7wdkstffcy4PWn2kgW0oztZFxjFK7KMUYmcJaUwRyIEp
 5HQ2OKErfQYCGuAiytL4PXJ5PwXni3EhGCZQhUqWGbd8o0IWGyEacL2PDkn751VfUd28EW9En
 19ybTT2XYKkNTHSboAxgaf9qLIEpwWIkugiiIKsM8Xfuk=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: mail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Original-From: john doe <johndoe65534@mail.com>
Reply-To: john doe <johndoe65534@mail.com>
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

On 6/14/24 20:17, 'Kyle' via blinux-list@redhat.com wrote:
> john doe' alisema:
>> Per default, the autocomplete feature is coming from duckduckgo.
>
>
> Still, as I understand it, all that stuff goes through a proxy, so
> searx.org's IP gets logged, not those of us who use it.
>

It's easy to get lost when coming up with assertions! ;^)

[1] https://docs.searxng.org/own-instance.html#id1
[2] https://docs.searxng.org/own-instance.html#id2

--
John Doe

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

