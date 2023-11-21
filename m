Return-Path: <blinux-list+bncBCCIDSOV5UGBBHHP6OVAMGQE35KW35Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 434607F35FA
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 19:31:58 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-41b83b3fd18sf77326401cf.3
        for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 10:31:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700591517; cv=pass;
        d=google.com; s=arc-20160816;
        b=cFgSsRBeYFaw4g/7aGCSaO9ahkGwJtFL0fp6ibqcfpFKmiPLu2e3lJfMSytzL/4kQ1
         0zDyv80XLzhbRbUnldNrLfltfuUAIcMcBGBZKl+tt7nQJM8rz/K/tvJHiSv/VaRVXn2P
         ypA91jW2Ibza/eQKMzNUoqDyML4uq9hFXDZU5X6clGEQzDtvyNvdY3MnavQLyxMRFzr9
         /rItZpqDSEUOS9Jk7FjKExE1ZA/1p4SUZDtgXqTNoWExL/u/aQLaiiUYEOa+oRbTBpyJ
         1lxHloxrlVPNMwvJpmGH6arZnFbMcaEUPKAa5Kkpr5AJOniJmNVCz7T6Wm3rBkZa8r6G
         qTyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :delivered-to;
        bh=/xFJghGViiCObDp6GVNcZh6oBJJY12QSD+ixzaULX6U=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=tHxPWNVtmI4b9g69+8aKpZjDGX2DF7Jh2Ap7scQWJumOkaPyTM1k0N+rvnvpb5FV+9
         bOoMY9CHqWtOs1CuYGeie5yDOvul4fNbLzamBmLMSuSGGMEWwfcR070/nyy5MEd1oTX/
         IAw36TsLC+ODBVfaSDcaoPjAa9O9pO9waMQyFKMfi4LOnHfWyM95C9KX4CAYX5g7W4CL
         Lj/Ttt/HnaLyeyj14cu1t8b1yjgaDxfZOtq0doh5mnJsUAPJHWsjfNFh1rLSuVCk/bg6
         kJS3++9K3RZ3wLrPto+6vlxmWMlW3XRs+C2bdO7V0Efn8jMIeVKjnF7PROOCxFaQbfLn
         3SEQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=joelz@pobox.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700591517; x=1701196317;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/xFJghGViiCObDp6GVNcZh6oBJJY12QSD+ixzaULX6U=;
        b=t88+hmMhUCLcHMAUotR9sDmfkFGLWE00MivwroqCtZVbG75KoYhge2/eIV+jv+US8v
         sLr5KpeUIa5YJzqegce0LZNXisbdFjqtvvce8Ml27pYNri6C/z7m9ifuSIduQqHyc3+S
         bUIJHWoznVZK7oZgTxNjD4l33qdbfxCMbMSw7S4vNOewyd3+lPtpyjfEDcezgYDds6qM
         fISnJ0u1DECoAh5Ou1Yu51xebjbQmCEfy1ZDgEYbF8g/pYIZm60bVdNe9LjwUBIcUgea
         hzzoRT2NcgqjzE8jMOxGZkeARCWI/vvJtKI35tmqxPkk1agCO129AvoF37OCv/U2RxFq
         fGJw==
X-Gm-Message-State: AOJu0YzjhvQ1KgAhmDIHo3ODmEs9YGQCUQv5us3TEAmRH40SVkV1+KzL
	Nq1a5krbNXK7DgMmjMQZZxmKyQ==
X-Google-Smtp-Source: AGHT+IF6w2zFrL8n1RoxbSbHKVZXlv/9wsG1DkcoVlIbTyQlZokhINR/VUlnlborztkUn1O1DZfCAQ==
X-Received: by 2002:a05:622a:648:b0:421:c58e:f9b1 with SMTP id a8-20020a05622a064800b00421c58ef9b1mr13490234qtb.28.1700591516982;
        Tue, 21 Nov 2023 10:31:56 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7259:0:b0:423:731a:7859 with SMTP id l25-20020ac87259000000b00423731a7859ls437093qtp.0.-pod-prod-09-us;
 Tue, 21 Nov 2023 10:31:56 -0800 (PST)
X-Received: by 2002:a05:622a:4401:b0:423:6fd1:40c with SMTP id ka1-20020a05622a440100b004236fd1040cmr2894025qtb.16.1700591515972;
        Tue, 21 Nov 2023 10:31:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700591515; cv=none;
        d=google.com; s=arc-20160816;
        b=C+4mawZc/cRdobvF5tu0ijoNkc3Z4QpnNG/UQh7xqwEycefLaVIyKZAEUNrrx+FDpd
         PFa0TG7NCPJs778ymyzqWYc81tuZwz+xKXfIC4qJJVgucUCy+q6UW04L+p48Qac7C+qQ
         4FamXQ3J7driLYYSezbjhEV/Qx6WjeU7ByZnY7b8WkZKs5ORwaKnWatCpw5Iw3Wuf1r7
         BpmnapKDg3mvAPxUdI7U9fd2zhfPQcKPwORCMSDl7PZt+Ur6seSjVOukQupSHxFLGFhC
         LkcFfbKx4Xr83LRtUayaPXN0bksdM7tkQThIU734g63jsbC7I3ITq2ZV5KkvMWmCzWc7
         xAEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to;
        bh=kuauu2HYz91tNJrfA97rvN4Vp7k+1+f5OITm0AOBYyI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Yo4TlHJeVjvr7s0i3/bTaw5Lj5kNbiRHkRD1Zj8LE7SiAdX1eP4vMiXu91H0nBcBH1
         d8NP/i5poIYyOgrL90rlsuJhDM7LBxKPCW5ybpAqjZFpuTKxdso43PFv9eMsnEmh7t3n
         ehX0cXHyjI4ypYIcd7mZO4EgNo9kXtekK/4OVpBoCJK6cLMaBPynioU5MZ2L2BZE2/IA
         y1H0DPQM2+wVsVRcu8Au5VlqTY5ZM3usi+CA434aO0m0/ik0yXWFMYIEEuj94OHgA2/K
         dDhKspzy52l5SNN6ynUMDhybn3Wniar3R2w1tIIJvO272XSLs7LPkRBqMsvCXhods2yr
         UaAg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=joelz@pobox.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id p10-20020a05622a13ca00b00417fd10f754si9777911qtk.412.2023.11.21.10.31.55
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 10:31:55 -0800 (PST)
Received-SPF: pass (google.com: domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) client-ip=64.147.108.71;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-507-GQaf4Kr9PTOBy_GQ8ez26A-1; Tue,
 21 Nov 2023 13:31:53 -0500
X-MC-Unique: GQaf4Kr9PTOBy_GQ8ez26A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 856321C05AFA
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 18:31:53 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 8269C502A; Tue, 21 Nov 2023 18:31:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7AEF25028
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 18:31:53 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5127B1C05AFA
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 18:31:53 +0000 (UTC)
Received: from pb-smtp2.pobox.com (pb-smtp2.pobox.com [64.147.108.71]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-656-3g2nLX_qOGa-_uZrhInRkA-1; Tue, 21 Nov 2023 13:31:48 -0500
X-MC-Unique: 3g2nLX_qOGa-_uZrhInRkA-1
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 618681B5612
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 13:27:36 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 586491B560D
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 13:27:36 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [111.239.165.192])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp2.pobox.com (Postfix) with ESMTPSA id A1BD41B560C
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 13:27:35 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.96)
	(envelope-from <joelz@pobox.com>)
	id 1r5VTA-0004ts-39
	for blinux-list@redhat.com;
	Tue, 21 Nov 2023 08:27:32 -1000
Date: Tue, 21 Nov 2023 08:27:32 -1000
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Subject: Re: Regex for spaces
Message-ID: <20231121182732.f675f7aqswegm7xr@sprite>
Reply-To: Joel Roth <joelz@pobox.com>
References: <20231121.153445.633.1@[192.168.1.100]>
MIME-Version: 1.0
In-Reply-To: <20231121.153445.633.1@[192.168.1.100]>
X-Pobox-Relay-ID: A48869F0-889B-11EE-8701-25B3960A682E-04347428!pb-smtp2.pobox.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: pobox.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: joelz@pobox.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=joelz@pobox.com
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

Glad to, Rob!

-p '^\s*(\S+)\s*$' -r '$1'

^ anchor to beginning of string
\s* zero or more space characters
(\S+) one or more non-space characters, parentheses capture this as $1
$ anchor to end of string

be sure to use the -d option first to make sure you're
getting what you want. I didn't test this. 

The classic 'rename' perl script is almost the same,
but does not recurse through directories for you (you'd have
to use 'find' for that'). The search and replace expressions
are separated by slashes. '-n' is for simulate only.

rename -n 's/^\s*(\S+)\s*$/$1/' [filenames here]

Have fun!

On Tue, Nov 21, 2023 at 09:34:45AM -0600, 'Rob Hudson' via blinux-list@redhat.com wrote:
> I am not good with regexes at all. They give me a headache lol. Can anyone supply me a regex that will remove any trailing spaces in front or at the end of a file name? I use the program brename:
> https://github.com/shenwei356/brename/
> I have a regex to remove double spaces, but now I need one that will knock off leading and trailing.
> Thanks for any help.
> 
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> 

-- 
Joel Roth

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

